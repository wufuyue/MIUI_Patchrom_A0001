.class Lcom/oppo/widget/OppoTabHost$FactoryContentStrategy;
.super Ljava/lang/Object;
.source "OppoTabHost.java"

# interfaces
.implements Lcom/oppo/widget/OppoTabHost$ContentStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FactoryContentStrategy"
.end annotation


# instance fields
.field private mFactory:Lcom/oppo/widget/OppoTabHost$TabContentFactory;

.field private mTabContent:Landroid/view/View;

.field private final mTag:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/oppo/widget/OppoTabHost;


# direct methods
.method public constructor <init>(Lcom/oppo/widget/OppoTabHost;Ljava/lang/CharSequence;Lcom/oppo/widget/OppoTabHost$TabContentFactory;)V
    .locals 0
    .param p2, "tag"    # Ljava/lang/CharSequence;
    .param p3, "factory"    # Lcom/oppo/widget/OppoTabHost$TabContentFactory;

    .prologue
    .line 775
    iput-object p1, p0, Lcom/oppo/widget/OppoTabHost$FactoryContentStrategy;->this$0:Lcom/oppo/widget/OppoTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 776
    iput-object p2, p0, Lcom/oppo/widget/OppoTabHost$FactoryContentStrategy;->mTag:Ljava/lang/CharSequence;

    .line 777
    iput-object p3, p0, Lcom/oppo/widget/OppoTabHost$FactoryContentStrategy;->mFactory:Lcom/oppo/widget/OppoTabHost$TabContentFactory;

    .line 778
    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 2

    .prologue
    .line 781
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    if-nez v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost$FactoryContentStrategy;->mFactory:Lcom/oppo/widget/OppoTabHost$TabContentFactory;

    iget-object v1, p0, Lcom/oppo/widget/OppoTabHost$FactoryContentStrategy;->mTag:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oppo/widget/OppoTabHost$TabContentFactory;->createTabContent(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoTabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 785
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    return-object v0
.end method

.method public tabClosed()V
    .locals 2

    .prologue
    .line 789
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 790
    return-void
.end method
