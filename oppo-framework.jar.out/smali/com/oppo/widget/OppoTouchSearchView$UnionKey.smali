.class Lcom/oppo/widget/OppoTouchSearchView$UnionKey;
.super Lcom/oppo/widget/OppoTouchSearchView$Key;
.source "OppoTouchSearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoTouchSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnionKey"
.end annotation


# instance fields
.field public keyOne:Ljava/lang/CharSequence;

.field public keyTwo:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "keyLabel"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 1263
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoTouchSearchView$Key;-><init>(Ljava/lang/CharSequence;)V

    .line 1259
    iput-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyOne:Ljava/lang/CharSequence;

    .line 1260
    iput-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyTwo:Ljava/lang/CharSequence;

    .line 1264
    return-void
.end method


# virtual methods
.method public getTextToDisplay(IIILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "height"    # I
    .param p4, "compare"    # Ljava/lang/CharSequence;

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->mKeyLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1271
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->mKeyLabel:Ljava/lang/CharSequence;

    .line 1280
    :goto_0
    return-object v0

    .line 1272
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyTwo:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 1273
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyOne:Ljava/lang/CharSequence;

    goto :goto_0

    .line 1275
    :cond_1
    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->y:I

    if-lt p2, v0, :cond_2

    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->y:I

    shr-int/lit8 v1, p3, 0x1

    add-int/2addr v0, v1

    if-gt p2, v0, :cond_2

    .line 1276
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyOne:Ljava/lang/CharSequence;

    goto :goto_0

    .line 1277
    :cond_2
    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->y:I

    shr-int/lit8 v1, p3, 0x1

    add-int/2addr v0, v1

    if-le p2, v0, :cond_3

    .line 1278
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyTwo:Ljava/lang/CharSequence;

    goto :goto_0

    .line 1280
    :cond_3
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyOne:Ljava/lang/CharSequence;

    goto :goto_0
.end method
