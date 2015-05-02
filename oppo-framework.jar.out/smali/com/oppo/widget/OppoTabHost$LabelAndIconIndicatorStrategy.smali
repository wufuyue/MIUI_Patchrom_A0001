.class Lcom/oppo/widget/OppoTabHost$LabelAndIconIndicatorStrategy;
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
    name = "LabelAndIconIndicatorStrategy"
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mLabel:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/oppo/widget/OppoTabHost;


# direct methods
.method private constructor <init>(Lcom/oppo/widget/OppoTabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 678
    iput-object p1, p0, Lcom/oppo/widget/OppoTabHost$LabelAndIconIndicatorStrategy;->this$0:Lcom/oppo/widget/OppoTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 679
    iput-object p2, p0, Lcom/oppo/widget/OppoTabHost$LabelAndIconIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    .line 680
    iput-object p3, p0, Lcom/oppo/widget/OppoTabHost$LabelAndIconIndicatorStrategy;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 681
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/widget/OppoTabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/oppo/widget/OppoTabHost$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/widget/OppoTabHost;
    .param p2, "x1"    # Ljava/lang/CharSequence;
    .param p3, "x2"    # Landroid/graphics/drawable/Drawable;
    .param p4, "x3"    # Lcom/oppo/widget/OppoTabHost$1;

    .prologue
    .line 673
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoTabHost$LabelAndIconIndicatorStrategy;-><init>(Lcom/oppo/widget/OppoTabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public createIndicatorView()Landroid/view/View;
    .locals 8

    .prologue
    .line 684
    iget-object v6, p0, Lcom/oppo/widget/OppoTabHost$LabelAndIconIndicatorStrategy;->this$0:Lcom/oppo/widget/OppoTabHost;

    invoke-virtual {v6}, Lcom/oppo/widget/OppoTabHost;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 685
    .local v0, "context":Landroid/content/Context;
    const-string v6, "layout_inflater"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 687
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const/4 v4, 0x0

    .line 688
    .local v4, "tabIndicatorId":I
    const v4, 0xc090426

    .line 690
    iget-object v6, p0, Lcom/oppo/widget/OppoTabHost$LabelAndIconIndicatorStrategy;->this$0:Lcom/oppo/widget/OppoTabHost;

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 691
    .local v3, "tabIndicator":Landroid/view/View;
    const v6, 0xc02049c

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 692
    .local v5, "tv":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/oppo/widget/OppoTabHost$LabelAndIconIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 694
    const v6, 0xc020434

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 695
    .local v1, "iconView":Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/oppo/widget/OppoTabHost$LabelAndIconIndicatorStrategy;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 697
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v7, 0x4

    if-gt v6, v7, :cond_0

    .line 698
    const v6, 0xc08046a

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 699
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0xc060404

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 703
    :cond_0
    return-object v3
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost$LabelAndIconIndicatorStrategy;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/oppo/widget/OppoTabHost$LabelAndIconIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method
