.class Lcom/oppo/widget/OppoMultiRemoveAdapter$3;
.super Ljava/lang/Object;
.source "OppoMultiRemoveAdapter.java"

# interfaces
.implements Lcom/oppo/widget/OppoMultiRemoveAdapter$OnHandleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoMultiRemoveAdapter;->onHideAnimatorsEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoMultiRemoveAdapter;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoMultiRemoveAdapter;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/oppo/widget/OppoMultiRemoveAdapter$3;->this$0:Lcom/oppo/widget/OppoMultiRemoveAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiRemoveAdapter$3;->this$0:Lcom/oppo/widget/OppoMultiRemoveAdapter;

    const/4 v1, 0x0

    # invokes: Lcom/oppo/widget/OppoMultiRemoveAdapter;->setRemovedItems(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/oppo/widget/OppoMultiRemoveAdapter;->access$100(Lcom/oppo/widget/OppoMultiRemoveAdapter;Ljava/util/List;)V

    .line 187
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiRemoveAdapter$3;->this$0:Lcom/oppo/widget/OppoMultiRemoveAdapter;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoMultiRemoveAdapter;->notifyDataSetChanged()V

    .line 188
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiRemoveAdapter$3;->this$0:Lcom/oppo/widget/OppoMultiRemoveAdapter;

    iget-object v0, v0, Lcom/oppo/widget/OppoMultiRemoveAdapter;->mRemoveAnimators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 189
    return-void
.end method
