.class public Lcom/oppo/widget/OppoListView;
.super Landroid/widget/ListView;
.source "OppoListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoListView$ScrollMultiChoiceListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DBG_MOTION:Z = false

.field public static final SCROLL_HORIZONTAL_LTR:I = 0x1

.field public static final SCROLL_HORIZONTAL_NULL:I = 0x0

.field public static final SCROLL_HORIZONTAL_RTL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "OppoListView"


# instance fields
.field private delayedScroll:Ljava/lang/Runnable;

.field private mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mDirection:I

.field private mDividerItemHeight:I

.field private mFillDivider:Z

.field private mFirstPos:I

.field private mFlag:Z

.field private mIsNotDrawFirstLine:Z

.field private mItemBottom:I

.field private mItemCount:I

.field private mItemToAppear:Z

.field private mItemTop:I

.field private mLastPos:I

.field private mLastPosition:I

.field private mLastSite:I

.field private mLasterPosition:I

.field private mLeftOffset:I

.field private mMultiChoice:Z

.field private mNeedDrawDivider:Z

.field private mPointY:F

.field private mPositionOffset:F

.field private mReferPosition:I

.field private mRightOffset:I

.field private mScrollMultiChoiceListener:Lcom/oppo/widget/OppoListView$ScrollMultiChoiceListener;

.field private mSpringEnabled:Z

.field private mUpScroll:Z

.field private mViewPager:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 74
    const v0, 0xc010400

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, -0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    iput-boolean v7, p0, Lcom/oppo/widget/OppoListView;->mIsNotDrawFirstLine:Z

    .line 59
    iput-boolean v8, p0, Lcom/oppo/widget/OppoListView;->mMultiChoice:Z

    .line 60
    iput v6, p0, Lcom/oppo/widget/OppoListView;->mLastPosition:I

    .line 61
    iput v6, p0, Lcom/oppo/widget/OppoListView;->mLasterPosition:I

    .line 62
    iput-boolean v7, p0, Lcom/oppo/widget/OppoListView;->mFlag:Z

    .line 63
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/oppo/widget/OppoListView;->mCheckBox:Landroid/widget/CheckBox;

    .line 66
    iput-boolean v8, p0, Lcom/oppo/widget/OppoListView;->mUpScroll:Z

    .line 67
    const/4 v6, -0x1

    iput v6, p0, Lcom/oppo/widget/OppoListView;->mLastSite:I

    .line 267
    new-instance v6, Lcom/oppo/widget/OppoListView$1;

    invoke-direct {v6, p0}, Lcom/oppo/widget/OppoListView$1;-><init>(Lcom/oppo/widget/OppoListView;)V

    iput-object v6, p0, Lcom/oppo/widget/OppoListView;->delayedScroll:Ljava/lang/Runnable;

    .line 389
    iput-boolean v8, p0, Lcom/oppo/widget/OppoListView;->mItemToAppear:Z

    .line 391
    iput v7, p0, Lcom/oppo/widget/OppoListView;->mDirection:I

    .line 80
    sget-object v6, Loppo/R$styleable;->OppoListView:[I

    invoke-virtual {p1, p2, v6, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 81
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 84
    .local v5, "springEnabled":Z
    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoListView;->setSpringEnabled(Z)V

    .line 86
    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 89
    .local v3, "fillDivider":Z
    invoke-virtual {p0, v3}, Lcom/oppo/widget/OppoListView;->setFillDivider(Z)V

    .line 91
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 92
    .local v2, "dividerItemHeight":I
    if-nez v2, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0xc050440

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 96
    :cond_0
    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoListView;->setDividerItemHeight(I)V

    .line 98
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 102
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 104
    .local v1, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0xc050437

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoListView;->mLeftOffset:I

    .line 106
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0xc050438

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoListView;->mRightOffset:I

    .line 109
    new-instance v6, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v6, p0, Lcom/oppo/widget/OppoListView;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 110
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v6, p0, Lcom/oppo/widget/OppoListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoListView;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/oppo/widget/OppoListView;->mUpScroll:Z

    return v0
.end method

.method private isInScrollRange(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    .line 280
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v3, v8

    .line 281
    .local v3, "m":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v6, v8

    .line 282
    .local v6, "n":I
    invoke-virtual {p0, v3, v6}, Lcom/oppo/widget/OppoListView;->pointToPosition(II)I

    move-result v0

    .line 283
    .local v0, "curPosition":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    float-to-int v7, v8

    .line 284
    .local v7, "xRaw":I
    const/4 v8, 0x2

    new-array v2, v8, [I

    .line 286
    .local v2, "location":[I
    :try_start_0
    iget-object v8, p0, Lcom/oppo/widget/OppoListView;->mOppoHooks:Landroid/widget/OppoListViewHooks;

    invoke-virtual {v8}, Landroid/widget/OppoListViewHooks;->getFirstPosition()I

    move-result v8

    sub-int v8, v0, v8

    invoke-virtual {p0, v8}, Lcom/oppo/widget/OppoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    const v10, 0xc020001

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/oppo/widget/OppoListView;->mCheckBox:Landroid/widget/CheckBox;

    .line 288
    iget-object v8, p0, Lcom/oppo/widget/OppoListView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v8, v2}, Landroid/widget/CheckBox;->getLocationOnScreen([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    aget v8, v2, v9

    iget v10, p0, Lcom/oppo/widget/OppoListView;->mLeftOffset:I

    sub-int v4, v8, v10

    .line 296
    .local v4, "mLeftBorder":I
    aget v8, v2, v9

    iget v10, p0, Lcom/oppo/widget/OppoListView;->mRightOffset:I

    add-int v5, v8, v10

    .line 297
    .local v5, "mRightBorder":I
    iget-object v8, p0, Lcom/oppo/widget/OppoListView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v8

    if-nez v8, :cond_1

    if-le v7, v4, :cond_1

    if-ge v7, v5, :cond_1

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getHeaderViewsCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-le v0, v8, :cond_1

    iget-object v8, p0, Lcom/oppo/widget/OppoListView;->mOppoHooks:Landroid/widget/OppoListViewHooks;

    invoke-virtual {v8}, Landroid/widget/OppoListViewHooks;->getCount()I

    move-result v8

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getFooterViewsCount()I

    move-result v10

    sub-int/2addr v8, v10

    if-ge v0, v8, :cond_1

    .line 300
    const/4 v8, 0x1

    .line 305
    .end local v4    # "mLeftBorder":I
    .end local v5    # "mRightBorder":I
    :goto_0
    return v8

    .line 289
    :catch_0
    move-exception v1

    .line 290
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    if-nez v8, :cond_0

    .line 291
    iput-boolean v9, p0, Lcom/oppo/widget/OppoListView;->mMultiChoice:Z

    :cond_0
    move v8, v9

    .line 293
    goto :goto_0

    .line 302
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "mLeftBorder":I
    .restart local v5    # "mRightBorder":I
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    if-nez v8, :cond_2

    .line 303
    iput-boolean v9, p0, Lcom/oppo/widget/OppoListView;->mMultiChoice:Z

    :cond_2
    move v8, v9

    .line 305
    goto :goto_0
.end method

.method private recomputePositionInParent(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 425
    iget v2, p0, Lcom/oppo/widget/OppoListView;->mItemTop:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/widget/OppoListView;->mItemTop:I

    .line 426
    iget v2, p0, Lcom/oppo/widget/OppoListView;->mItemBottom:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/widget/OppoListView;->mItemBottom:I

    .line 427
    iget-object v2, p0, Lcom/oppo/widget/OppoListView;->mViewPager:Landroid/view/View;

    if-nez v2, :cond_1

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 434
    .local v1, "viewParent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 435
    check-cast v0, Landroid/view/View;

    .line 436
    .local v0, "parent":Landroid/view/View;
    iget-object v2, p0, Lcom/oppo/widget/OppoListView;->mViewPager:Landroid/view/View;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 439
    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoListView;->recomputePositionInParent(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method protected calChildrenLeftPosition(II)I
    .locals 9
    .param p1, "position"    # I
    .param p2, "childrenLeft"    # I

    .prologue
    const/high16 v8, 0x40400000    # 3.0f

    const v7, 0x3f19999a    # 0.6f

    const v6, 0x3ecccccd    # 0.4f

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 476
    move v0, p2

    .line 477
    .local v0, "childLeft":I
    iget v2, p0, Lcom/oppo/widget/OppoListView;->mPositionOffset:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    .line 482
    iget v2, p0, Lcom/oppo/widget/OppoListView;->mReferPosition:I

    iget v3, p0, Lcom/oppo/widget/OppoListView;->mFirstPos:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/oppo/widget/OppoListView;->mReferPosition:I

    iget v4, p0, Lcom/oppo/widget/OppoListView;->mLastPos:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 484
    .local v1, "count":I
    iget v2, p0, Lcom/oppo/widget/OppoListView;->mDirection:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 485
    iget-boolean v2, p0, Lcom/oppo/widget/OppoListView;->mItemToAppear:Z

    if-eqz v2, :cond_1

    .line 486
    iget-object v2, p0, Lcom/oppo/widget/OppoListView;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    iget v3, p0, Lcom/oppo/widget/OppoListView;->mReferPosition:I

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/oppo/widget/OppoListView;->mItemCount:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v2

    iget v3, p0, Lcom/oppo/widget/OppoListView;->mPositionOffset:F

    sub-float v3, v5, v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v0, v2

    .line 522
    .end local v1    # "count":I
    :cond_0
    :goto_0
    return v0

    .line 489
    .restart local v1    # "count":I
    :cond_1
    iget v2, p0, Lcom/oppo/widget/OppoListView;->mPositionOffset:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_2

    .line 490
    iput v7, p0, Lcom/oppo/widget/OppoListView;->mPositionOffset:F

    .line 492
    :cond_2
    iget-object v2, p0, Lcom/oppo/widget/OppoListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iget v3, p0, Lcom/oppo/widget/OppoListView;->mReferPosition:I

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    sub-float v3, v5, v3

    invoke-virtual {v2, v3}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    iget v3, p0, Lcom/oppo/widget/OppoListView;->mPositionOffset:F

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v8

    float-to-int v2, v2

    sub-int/2addr v0, v2

    goto :goto_0

    .line 495
    :cond_3
    iget v2, p0, Lcom/oppo/widget/OppoListView;->mDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 496
    iget-boolean v2, p0, Lcom/oppo/widget/OppoListView;->mItemToAppear:Z

    if-eqz v2, :cond_4

    .line 497
    iget-object v2, p0, Lcom/oppo/widget/OppoListView;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    iget v3, p0, Lcom/oppo/widget/OppoListView;->mReferPosition:I

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/oppo/widget/OppoListView;->mItemCount:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v2

    iget v3, p0, Lcom/oppo/widget/OppoListView;->mPositionOffset:F

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v0, v2

    goto :goto_0

    .line 500
    :cond_4
    iget v2, p0, Lcom/oppo/widget/OppoListView;->mPositionOffset:F

    cmpg-float v2, v2, v6

    if-gez v2, :cond_5

    .line 501
    iput v6, p0, Lcom/oppo/widget/OppoListView;->mPositionOffset:F

    .line 503
    :cond_5
    iget-object v2, p0, Lcom/oppo/widget/OppoListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iget v3, p0, Lcom/oppo/widget/OppoListView;->mReferPosition:I

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    sub-float v3, v5, v3

    invoke-virtual {v2, v3}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    iget v3, p0, Lcom/oppo/widget/OppoListView;->mPositionOffset:F

    sub-float v3, v5, v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v8

    float-to-int v2, v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 507
    .end local v1    # "count":I
    :cond_6
    iget v2, p0, Lcom/oppo/widget/OppoListView;->mPositionOffset:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 512
    iget v2, p0, Lcom/oppo/widget/OppoListView;->mReferPosition:I

    iget v3, p0, Lcom/oppo/widget/OppoListView;->mFirstPos:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/oppo/widget/OppoListView;->mReferPosition:I

    iget v4, p0, Lcom/oppo/widget/OppoListView;->mLastPos:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 514
    .restart local v1    # "count":I
    iget v2, p0, Lcom/oppo/widget/OppoListView;->mDirection:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 515
    iget-object v2, p0, Lcom/oppo/widget/OppoListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iget v3, p0, Lcom/oppo/widget/OppoListView;->mReferPosition:I

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    sub-float v3, v5, v3

    invoke-virtual {v2, v3}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    iget v3, p0, Lcom/oppo/widget/OppoListView;->mPositionOffset:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x40c00000    # 6.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v0, v2

    goto/16 :goto_0

    .line 517
    :cond_7
    iget v2, p0, Lcom/oppo/widget/OppoListView;->mDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 518
    iget-object v2, p0, Lcom/oppo/widget/OppoListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iget v3, p0, Lcom/oppo/widget/OppoListView;->mReferPosition:I

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    sub-float v3, v5, v3

    invoke-virtual {v2, v3}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    iget v3, p0, Lcom/oppo/widget/OppoListView;->mPositionOffset:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x40c00000    # 6.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v0, v2

    goto/16 :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v11, 0x0

    .line 182
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 184
    const/4 v6, 0x0

    .line 185
    .local v6, "isFullScreen":Z
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getChildCount()I

    move-result v1

    .line 186
    .local v1, "count":I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getScrollY()I

    move-result v10

    .line 187
    .local v10, "scrollY":I
    const/4 v7, 0x0

    .line 188
    .local v7, "lastchild":Landroid/view/View;
    if-lez v1, :cond_0

    .line 189
    add-int/lit8 v12, v1, -0x1

    invoke-virtual {p0, v12}, Lcom/oppo/widget/OppoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 192
    :cond_0
    if-eqz v7, :cond_2

    .line 193
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v12

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getHeight()I

    move-result v13

    if-ge v12, v13, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getHeight()I

    move-result v13

    if-lt v12, v13, :cond_2

    .line 195
    :cond_1
    const/4 v6, 0x1

    .line 199
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getFillDivider()Z

    move-result v12

    if-eqz v12, :cond_6

    if-nez v6, :cond_6

    .line 200
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getDividerHeight()I

    move-result v2

    .line 201
    .local v2, "dividerHeight":I
    if-lez v2, :cond_5

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v12, :cond_5

    const/4 v4, 0x1

    .line 202
    .local v4, "drawDividers":Z
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getBottom()I

    move-result v12

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getTop()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getListPaddingBottom()I

    move-result v13

    sub-int v8, v12, v13

    .line 203
    .local v8, "listBottom":I
    const/4 v5, 0x0

    .line 204
    .local v5, "fillBottom":I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getDividerItemHeight()I

    move-result v3

    .line 206
    .local v3, "dividerItemHeight":I
    const/4 v9, 0x0

    .line 208
    .local v9, "needCheck":Z
    if-lez v1, :cond_3

    .line 209
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 212
    :cond_3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 213
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getPaddingLeft()I

    move-result v12

    iput v12, v0, Landroid/graphics/Rect;->left:I

    .line 214
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getRight()I

    move-result v12

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getLeft()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getPaddingRight()I

    move-result v13

    sub-int/2addr v12, v13

    iput v12, v0, Landroid/graphics/Rect;->right:I

    .line 216
    iget-boolean v12, p0, Lcom/oppo/widget/OppoListView;->mIsNotDrawFirstLine:Z

    if-eqz v12, :cond_4

    .line 217
    add-int v12, v5, v3

    add-int v5, v12, v2

    .line 221
    :cond_4
    :goto_1
    if-lez v3, :cond_6

    add-int v12, v8, v10

    if-ge v5, v12, :cond_6

    if-eqz v4, :cond_6

    .line 222
    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 223
    add-int v12, v5, v2

    iput v12, v0, Landroid/graphics/Rect;->bottom:I

    .line 224
    invoke-virtual {p0, p1, v0, v11}, Lcom/oppo/widget/OppoListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 225
    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    add-int v5, v12, v3

    goto :goto_1

    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v3    # "dividerItemHeight":I
    .end local v4    # "drawDividers":Z
    .end local v5    # "fillBottom":I
    .end local v8    # "listBottom":I
    .end local v9    # "needCheck":Z
    :cond_5
    move v4, v11

    .line 201
    goto :goto_0

    .line 229
    .end local v2    # "dividerHeight":I
    :cond_6
    return-void
.end method

.method public drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "childIndex"    # I

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 243
    .local v0, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 244
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 245
    return-void
.end method

.method public getDividerItemHeight()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/oppo/widget/OppoListView;->mDividerItemHeight:I

    return v0
.end method

.method public getFillDivider()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/oppo/widget/OppoListView;->mFillDivider:Z

    return v0
.end method

.method public getIsNotDrawFirstLine()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/oppo/widget/OppoListView;->mIsNotDrawFirstLine:Z

    return v0
.end method

.method public isSpringEnabled()Z
    .locals 2

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 249
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 252
    .local v0, "action":I
    and-int/lit16 v4, v0, 0xff

    packed-switch v4, :pswitch_data_0

    .line 264
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    :goto_0
    return v4

    .line 254
    :pswitch_0
    iget-object v4, p0, Lcom/oppo/widget/OppoListView;->mOppoHooks:Landroid/widget/OppoListViewHooks;

    invoke-virtual {v4}, Landroid/widget/OppoListViewHooks;->getTouchMode()I

    move-result v1

    .line 255
    .local v1, "touchMode":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 256
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 258
    .local v3, "y":I
    iget-boolean v4, p0, Lcom/oppo/widget/OppoListView;->mMultiChoice:Z

    if-eqz v4, :cond_0

    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoListView;->isInScrollRange(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 259
    const/4 v4, 0x1

    goto :goto_0

    .line 252
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/16 v11, 0x32

    const/4 v10, 0x0

    const/4 v7, -0x1

    const/4 v4, 0x1

    const/4 v9, -0x2

    .line 311
    iget-boolean v5, p0, Lcom/oppo/widget/OppoListView;->mMultiChoice:Z

    if-eqz v5, :cond_0

    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoListView;->isInScrollRange(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 312
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v2, v5

    .line 313
    .local v2, "m":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v3, v5

    .line 314
    .local v3, "n":I
    invoke-virtual {p0, v2, v3}, Lcom/oppo/widget/OppoListView;->pointToPosition(II)I

    move-result v1

    .line 315
    .local v1, "curPosition":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 358
    .end local v1    # "curPosition":I
    .end local v2    # "m":I
    .end local v3    # "n":I
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 359
    .local v0, "action":I
    and-int/lit16 v5, v0, 0xff

    packed-switch v5, :pswitch_data_1

    .line 369
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .end local v0    # "action":I
    :cond_1
    :goto_2
    return v4

    .line 317
    .restart local v1    # "curPosition":I
    .restart local v2    # "m":I
    .restart local v3    # "n":I
    :pswitch_0
    iput v9, p0, Lcom/oppo/widget/OppoListView;->mLastPosition:I

    .line 318
    iput v9, p0, Lcom/oppo/widget/OppoListView;->mLasterPosition:I

    goto :goto_0

    .line 321
    :pswitch_1
    iput-boolean v4, p0, Lcom/oppo/widget/OppoListView;->mFlag:Z

    .line 324
    :pswitch_2
    iget-object v5, p0, Lcom/oppo/widget/OppoListView;->mOppoHooks:Landroid/widget/OppoListViewHooks;

    invoke-virtual {v5}, Landroid/widget/OppoListViewHooks;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v1, v5, :cond_2

    .line 325
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Lcom/oppo/widget/OppoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0, v1, v5}, Lcom/oppo/widget/OppoListView;->setSelectionFromTop(II)V

    .line 328
    :cond_2
    iget-boolean v5, p0, Lcom/oppo/widget/OppoListView;->mFlag:Z

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/oppo/widget/OppoListView;->mLastPosition:I

    if-eq v5, v1, :cond_1

    if-eq v1, v7, :cond_1

    iget-object v5, p0, Lcom/oppo/widget/OppoListView;->mScrollMultiChoiceListener:Lcom/oppo/widget/OppoListView$ScrollMultiChoiceListener;

    if-eqz v5, :cond_1

    .line 330
    iget v5, p0, Lcom/oppo/widget/OppoListView;->mLastSite:I

    if-eq v5, v7, :cond_3

    iget v5, p0, Lcom/oppo/widget/OppoListView;->mLastSite:I

    add-int/lit8 v6, v1, -0x1

    if-eq v5, v6, :cond_3

    iget v5, p0, Lcom/oppo/widget/OppoListView;->mLastSite:I

    if-ge v5, v1, :cond_3

    .line 331
    iget-object v5, p0, Lcom/oppo/widget/OppoListView;->mScrollMultiChoiceListener:Lcom/oppo/widget/OppoListView$ScrollMultiChoiceListener;

    iget v6, p0, Lcom/oppo/widget/OppoListView;->mLastSite:I

    add-int/lit8 v6, v6, 0x1

    iget v7, p0, Lcom/oppo/widget/OppoListView;->mLastSite:I

    add-int/lit8 v7, v7, 0x1

    iget-object v8, p0, Lcom/oppo/widget/OppoListView;->mOppoHooks:Landroid/widget/OppoListViewHooks;

    invoke-virtual {v8}, Landroid/widget/OppoListViewHooks;->getFirstPosition()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/oppo/widget/OppoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/oppo/widget/OppoListView$ScrollMultiChoiceListener;->onItemTouch(ILandroid/view/View;)V

    .line 334
    :cond_3
    iget-object v5, p0, Lcom/oppo/widget/OppoListView;->mScrollMultiChoiceListener:Lcom/oppo/widget/OppoListView$ScrollMultiChoiceListener;

    iget-object v6, p0, Lcom/oppo/widget/OppoListView;->mOppoHooks:Landroid/widget/OppoListViewHooks;

    invoke-virtual {v6}, Landroid/widget/OppoListViewHooks;->getFirstPosition()I

    move-result v6

    sub-int v6, v1, v6

    invoke-virtual {p0, v6}, Lcom/oppo/widget/OppoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Lcom/oppo/widget/OppoListView$ScrollMultiChoiceListener;->onItemTouch(ILandroid/view/View;)V

    .line 336
    iput v1, p0, Lcom/oppo/widget/OppoListView;->mLastSite:I

    .line 337
    iget-object v5, p0, Lcom/oppo/widget/OppoListView;->mOppoHooks:Landroid/widget/OppoListViewHooks;

    invoke-virtual {v5}, Landroid/widget/OppoListViewHooks;->getFirstPosition()I

    move-result v5

    if-ne v1, v5, :cond_4

    iget-object v5, p0, Lcom/oppo/widget/OppoListView;->mOppoHooks:Landroid/widget/OppoListViewHooks;

    invoke-virtual {v5}, Landroid/widget/OppoListViewHooks;->getFirstPosition()I

    move-result v5

    if-lez v5, :cond_4

    iget v5, p0, Lcom/oppo/widget/OppoListView;->mLastPosition:I

    if-eq v5, v9, :cond_4

    .line 339
    iput-boolean v4, p0, Lcom/oppo/widget/OppoListView;->mUpScroll:Z

    .line 340
    iget-object v5, p0, Lcom/oppo/widget/OppoListView;->delayedScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, v5, v11, v12}, Lcom/oppo/widget/OppoListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 342
    :cond_4
    iget-object v5, p0, Lcom/oppo/widget/OppoListView;->mOppoHooks:Landroid/widget/OppoListViewHooks;

    invoke-virtual {v5}, Landroid/widget/OppoListViewHooks;->getFirstPosition()I

    move-result v5

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getChildCount()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    if-ne v1, v5, :cond_5

    iget-object v5, p0, Lcom/oppo/widget/OppoListView;->mOppoHooks:Landroid/widget/OppoListViewHooks;

    invoke-virtual {v5}, Landroid/widget/OppoListViewHooks;->getCount()I

    move-result v5

    if-eq v1, v5, :cond_5

    iget v5, p0, Lcom/oppo/widget/OppoListView;->mLastPosition:I

    if-eq v5, v9, :cond_5

    .line 344
    iput-boolean v10, p0, Lcom/oppo/widget/OppoListView;->mUpScroll:Z

    .line 345
    iget-object v5, p0, Lcom/oppo/widget/OppoListView;->delayedScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, v5, v11, v12}, Lcom/oppo/widget/OppoListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 347
    :cond_5
    iget v5, p0, Lcom/oppo/widget/OppoListView;->mLasterPosition:I

    if-ne v5, v1, :cond_6

    .line 348
    iget-object v5, p0, Lcom/oppo/widget/OppoListView;->mScrollMultiChoiceListener:Lcom/oppo/widget/OppoListView$ScrollMultiChoiceListener;

    iget v6, p0, Lcom/oppo/widget/OppoListView;->mLastPosition:I

    iget v7, p0, Lcom/oppo/widget/OppoListView;->mLastPosition:I

    iget-object v8, p0, Lcom/oppo/widget/OppoListView;->mOppoHooks:Landroid/widget/OppoListViewHooks;

    invoke-virtual {v8}, Landroid/widget/OppoListViewHooks;->getFirstPosition()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/oppo/widget/OppoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/oppo/widget/OppoListView$ScrollMultiChoiceListener;->onItemTouch(ILandroid/view/View;)V

    .line 351
    :cond_6
    iget v5, p0, Lcom/oppo/widget/OppoListView;->mLastPosition:I

    iput v5, p0, Lcom/oppo/widget/OppoListView;->mLasterPosition:I

    .line 352
    iput v1, p0, Lcom/oppo/widget/OppoListView;->mLastPosition:I

    goto/16 :goto_2

    .line 361
    .end local v1    # "curPosition":I
    .end local v2    # "m":I
    .end local v3    # "n":I
    .restart local v0    # "action":I
    :pswitch_3
    iput v9, p0, Lcom/oppo/widget/OppoListView;->mLastPosition:I

    .line 362
    iput v9, p0, Lcom/oppo/widget/OppoListView;->mLasterPosition:I

    .line 363
    iput-boolean v10, p0, Lcom/oppo/widget/OppoListView;->mFlag:Z

    .line 364
    iput-boolean v4, p0, Lcom/oppo/widget/OppoListView;->mMultiChoice:Z

    .line 365
    iput v7, p0, Lcom/oppo/widget/OppoListView;->mLastSite:I

    goto/16 :goto_1

    .line 315
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 359
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method

.method public setDividerItemHeight(I)V
    .locals 0
    .param p1, "itemHeight"    # I

    .prologue
    .line 156
    iput p1, p0, Lcom/oppo/widget/OppoListView;->mDividerItemHeight:I

    .line 157
    return-void
.end method

.method public setFillDivider(Z)V
    .locals 0
    .param p1, "fillDivider"    # Z

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/oppo/widget/OppoListView;->mFillDivider:Z

    .line 141
    return-void
.end method

.method public setIsNotDrawFirstLine(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/oppo/widget/OppoListView;->mIsNotDrawFirstLine:Z

    .line 173
    return-void
.end method

.method public setScrollDirection(I)V
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 402
    iget v0, p0, Lcom/oppo/widget/OppoListView;->mDirection:I

    if-eq v0, p1, :cond_0

    .line 403
    iput p1, p0, Lcom/oppo/widget/OppoListView;->mDirection:I

    .line 404
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->layoutChildren()V

    .line 406
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoListView;->mItemCount:I

    .line 407
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoListView;->mFirstPos:I

    .line 408
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getLastVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoListView;->mLastPos:I

    .line 409
    iget v0, p0, Lcom/oppo/widget/OppoListView;->mItemCount:I

    if-eqz v0, :cond_1

    .line 410
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoListView;->mItemTop:I

    .line 411
    iget v0, p0, Lcom/oppo/widget/OppoListView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoListView;->mItemBottom:I

    .line 413
    :cond_1
    return-void
.end method

.method public setScrollDirection(ILandroid/view/View;)V
    .locals 0
    .param p1, "direction"    # I
    .param p2, "pager"    # Landroid/view/View;

    .prologue
    .line 419
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoListView;->setScrollDirection(I)V

    .line 420
    iput-object p2, p0, Lcom/oppo/widget/OppoListView;->mViewPager:Landroid/view/View;

    .line 421
    invoke-direct {p0, p0}, Lcom/oppo/widget/OppoListView;->recomputePositionInParent(Landroid/view/View;)V

    .line 422
    return-void
.end method

.method public setScrollMultiChoiceListener(Lcom/oppo/widget/OppoListView$ScrollMultiChoiceListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oppo/widget/OppoListView$ScrollMultiChoiceListener;

    .prologue
    .line 373
    iput-object p1, p0, Lcom/oppo/widget/OppoListView;->mScrollMultiChoiceListener:Lcom/oppo/widget/OppoListView$ScrollMultiChoiceListener;

    .line 374
    return-void
.end method

.method public setSpringEnabled(Z)V
    .locals 1
    .param p1, "springEnable"    # Z

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/oppo/widget/OppoListView;->mSpringEnabled:Z

    .line 120
    iget-boolean v0, p0, Lcom/oppo/widget/OppoListView;->mSpringEnabled:Z

    if-eqz v0, :cond_0

    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoListView;->setOverScrollMode(I)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoListView;->setOverScrollMode(I)V

    goto :goto_0
.end method

.method public updateHorizontalPosition(FF)V
    .locals 3
    .param p1, "y"    # F
    .param p2, "offset"    # F

    .prologue
    .line 456
    iget v0, p0, Lcom/oppo/widget/OppoListView;->mItemCount:I

    if-nez v0, :cond_0

    .line 473
    :goto_0
    return-void

    .line 459
    :cond_0
    iget v0, p0, Lcom/oppo/widget/OppoListView;->mPointY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 460
    iput p1, p0, Lcom/oppo/widget/OppoListView;->mPointY:F

    .line 461
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/oppo/widget/OppoListView;->mPointY:F

    iget v2, p0, Lcom/oppo/widget/OppoListView;->mItemTop:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/oppo/widget/OppoListView;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoListView;->mReferPosition:I

    .line 463
    :cond_1
    iget v0, p0, Lcom/oppo/widget/OppoListView;->mReferPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 464
    iget v0, p0, Lcom/oppo/widget/OppoListView;->mPointY:F

    iget v1, p0, Lcom/oppo/widget/OppoListView;->mItemTop:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 465
    iget v0, p0, Lcom/oppo/widget/OppoListView;->mFirstPos:I

    iput v0, p0, Lcom/oppo/widget/OppoListView;->mReferPosition:I

    .line 467
    :cond_2
    iget v0, p0, Lcom/oppo/widget/OppoListView;->mPointY:F

    iget v1, p0, Lcom/oppo/widget/OppoListView;->mItemTop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 468
    iget v0, p0, Lcom/oppo/widget/OppoListView;->mLastPos:I

    iput v0, p0, Lcom/oppo/widget/OppoListView;->mReferPosition:I

    .line 471
    :cond_3
    iput p2, p0, Lcom/oppo/widget/OppoListView;->mPositionOffset:F

    .line 472
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->layoutChildren()V

    goto :goto_0
.end method

.method public updateHorizontalPosition(FFZ)V
    .locals 0
    .param p1, "y"    # F
    .param p2, "offset"    # F
    .param p3, "toAppear"    # Z

    .prologue
    .line 448
    iput-boolean p3, p0, Lcom/oppo/widget/OppoListView;->mItemToAppear:Z

    .line 449
    invoke-virtual {p0, p1, p2}, Lcom/oppo/widget/OppoListView;->updateHorizontalPosition(FF)V

    .line 450
    return-void
.end method
