.class Landroid/widget/OppoEditor$TextListener;
.super Ljava/lang/Object;
.source "OppoEditor.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OppoEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextListener"
.end annotation


# instance fields
.field private mMaxLength:I

.field final synthetic this$0:Landroid/widget/OppoEditor;


# direct methods
.method constructor <init>(Landroid/widget/OppoEditor;I)V
    .locals 0
    .param p2, "maxlength"    # I

    .prologue
    .line 1042
    iput-object p1, p0, Landroid/widget/OppoEditor$TextListener;->this$0:Landroid/widget/OppoEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1043
    iput p2, p0, Landroid/widget/OppoEditor$TextListener;->mMaxLength:I

    .line 1044
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 1047
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 1050
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 1053
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 1054
    .local v1, "len":I
    iget v2, p0, Landroid/widget/OppoEditor$TextListener;->mMaxLength:I

    if-le v1, v2, :cond_0

    .line 1055
    iget v2, p0, Landroid/widget/OppoEditor$TextListener;->mMaxLength:I

    sub-int v0, v1, v2

    .line 1056
    .local v0, "delLen":I
    iget-object v2, p0, Landroid/widget/OppoEditor$TextListener;->this$0:Landroid/widget/OppoEditor;

    # getter for: Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/OppoEditor;->access$000(Landroid/widget/OppoEditor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    add-int v3, p2, p4

    sub-int/2addr v3, v0

    add-int v4, p2, p4

    invoke-interface {v2, v3, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1057
    iget-object v2, p0, Landroid/widget/OppoEditor$TextListener;->this$0:Landroid/widget/OppoEditor;

    # getter for: Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/widget/OppoEditor;->access$100(Landroid/widget/OppoEditor;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/OppoEditor$TextListener;->this$0:Landroid/widget/OppoEditor;

    # getter for: Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/widget/OppoEditor;->access$100(Landroid/widget/OppoEditor;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0xc040544

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1061
    .end local v0    # "delLen":I
    :cond_0
    return-void
.end method
