.class Lcom/oppo/widget/OppoTabHost$LabelIndicatorStrategy;
.super Ljava/lang/Object;
.source "OppoTabHost.java"

# interfaces
.implements Lcom/oppo/widget/OppoTabHost$IndicatorStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LabelIndicatorStrategy"
.end annotation


# instance fields
.field private final mLabel:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/oppo/widget/OppoTabHost;


# direct methods
.method private constructor <init>(Lcom/oppo/widget/OppoTabHost;Ljava/lang/CharSequence;)V
    .locals 0
    .param p2, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 637
    iput-object p1, p0, Lcom/oppo/widget/OppoTabHost$LabelIndicatorStrategy;->this$0:Lcom/oppo/widget/OppoTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 638
    iput-object p2, p0, Lcom/oppo/widget/OppoTabHost$LabelIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    .line 639
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/widget/OppoTabHost;Ljava/lang/CharSequence;Lcom/oppo/widget/OppoTabHost$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/widget/OppoTabHost;
    .param p2, "x1"    # Ljava/lang/CharSequence;
    .param p3, "x2"    # Lcom/oppo/widget/OppoTabHost$1;

    .prologue
    .line 633
    invoke-direct {p0, p1, p2}, Lcom/oppo/widget/OppoTabHost$LabelIndicatorStrategy;-><init>(Lcom/oppo/widget/OppoTabHost;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public createIndicatorView()Landroid/view/View;
    .locals 7

    .prologue
    .line 642
    iget-object v5, p0, Lcom/oppo/widget/OppoTabHost$LabelIndicatorStrategy;->this$0:Lcom/oppo/widget/OppoTabHost;

    invoke-virtual {v5}, Lcom/oppo/widget/OppoTabHost;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 643
    .local v0, "context":Landroid/content/Context;
    const-string v5, "layout_inflater"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 645
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0xc090426

    .line 647
    .local v3, "tabIndicatorId":I
    iget-object v5, p0, Lcom/oppo/widget/OppoTabHost$LabelIndicatorStrategy;->this$0:Lcom/oppo/widget/OppoTabHost;

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 649
    .local v2, "tabIndicator":Landroid/view/View;
    const v5, 0xc02049c

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 650
    .local v4, "tv":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/oppo/widget/OppoTabHost$LabelIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 652
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v6, 0x4

    if-gt v5, v6, :cond_0

    .line 653
    const v5, 0xc08046a

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 654
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0xc060404

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 658
    :cond_0
    return-object v2
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 666
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost$LabelIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method
