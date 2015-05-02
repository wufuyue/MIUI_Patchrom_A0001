.class Landroid/widget/OppoEditor$PastePanelOnClickListener;
.super Ljava/lang/Object;
.source "OppoEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OppoEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PastePanelOnClickListener"
.end annotation


# instance fields
.field private mController:Landroid/widget/OppoCursorController;

.field private mMax:I

.field private mMin:I

.field final synthetic this$0:Landroid/widget/OppoEditor;


# direct methods
.method constructor <init>(Landroid/widget/OppoEditor;Landroid/widget/OppoCursorController;II)V
    .locals 0
    .param p2, "cc"    # Landroid/widget/OppoCursorController;
    .param p3, "min"    # I
    .param p4, "max"    # I

    .prologue
    .line 637
    iput-object p1, p0, Landroid/widget/OppoEditor$PastePanelOnClickListener;->this$0:Landroid/widget/OppoEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 638
    iput-object p2, p0, Landroid/widget/OppoEditor$PastePanelOnClickListener;->mController:Landroid/widget/OppoCursorController;

    .line 639
    iput p3, p0, Landroid/widget/OppoEditor$PastePanelOnClickListener;->mMin:I

    .line 640
    iput p4, p0, Landroid/widget/OppoEditor$PastePanelOnClickListener;->mMax:I

    .line 641
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 645
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 646
    .local v0, "t":Landroid/widget/TextView;
    iget-object v1, p0, Landroid/widget/OppoEditor$PastePanelOnClickListener;->this$0:Landroid/widget/OppoEditor;

    # getter for: Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/OppoEditor;->access$000(Landroid/widget/OppoEditor;)Landroid/widget/TextView;

    move-result-object v1

    iget v2, p0, Landroid/widget/OppoEditor$PastePanelOnClickListener;->mMin:I

    iget v3, p0, Landroid/widget/OppoEditor$PastePanelOnClickListener;->mMax:I

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    .line 647
    iget-object v1, p0, Landroid/widget/OppoEditor$PastePanelOnClickListener;->this$0:Landroid/widget/OppoEditor;

    invoke-virtual {v1}, Landroid/widget/OppoEditor;->stopTextSelectionMode()V

    .line 648
    iget-object v1, p0, Landroid/widget/OppoEditor$PastePanelOnClickListener;->mController:Landroid/widget/OppoCursorController;

    check-cast v1, Landroid/widget/OppoCursorController$InsertionPointCursorController;

    invoke-virtual {v1}, Landroid/widget/OppoCursorController$InsertionPointCursorController;->onClipBoardPancelClick()V

    .line 650
    return-void
.end method
