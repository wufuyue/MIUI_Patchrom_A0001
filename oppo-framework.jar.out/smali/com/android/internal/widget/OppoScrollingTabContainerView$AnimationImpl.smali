.class Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;
.super Ljava/lang/Object;
.source "OppoScrollingTabContainerView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/OppoScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationImpl"
.end annotation


# instance fields
.field private mAfterSelected:Landroid/graphics/drawable/Drawable;

.field private mAnimateTabOffset:F

.field private mAnimateTabOutLength:F

.field private mAnimateTabWidth:I

.field private mBeforeSelected:Landroid/graphics/drawable/Drawable;

.field private mDrawText:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDx:I

.field private mHeadSelected:Landroid/graphics/drawable/Drawable;

.field private mIsBegin:Z

.field private mIsCleared:Z

.field private mIsClicked:Z

.field private mIsDrag:Z

.field private mIsInterrupted:Z

.field private mIsTransparent:Z

.field private mItemWidth:I

.field private mLayout:Landroid/text/Layout;

.field private mLeftOffset:F

.field private mMiddleSelected:Landroid/graphics/drawable/Drawable;

.field private mMoveDrawable:Landroid/graphics/drawable/Drawable;

.field private final mMoveListener:Landroid/animation/Animator$AnimatorListener;

.field private mNomalUnselected:Landroid/graphics/drawable/Drawable;

.field private mRightOffset:F

.field private mScorllingTabBackground:Landroid/graphics/drawable/Drawable;

.field private mSelectedTextAlpha:I

.field private mShapeHolder:Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;

.field private mShowAnimationByClick:Z

.field private mState:I

.field private mTailSelected:Landroid/graphics/drawable/Drawable;

.field private mTextPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/OppoScrollingTabContainerView;Landroid/content/Context;)V
    .locals 10
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 149
    iput-object p1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object v7, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mTextPaint:Landroid/graphics/Paint;

    .line 89
    const/16 v4, 0xff

    iput v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mSelectedTextAlpha:I

    .line 90
    iput-object v7, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mScorllingTabBackground:Landroid/graphics/drawable/Drawable;

    .line 91
    iput-object v7, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mMoveDrawable:Landroid/graphics/drawable/Drawable;

    .line 92
    iput-object v7, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mHeadSelected:Landroid/graphics/drawable/Drawable;

    .line 93
    iput-object v7, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mMiddleSelected:Landroid/graphics/drawable/Drawable;

    .line 94
    iput-object v7, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mTailSelected:Landroid/graphics/drawable/Drawable;

    .line 95
    iput-object v7, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAfterSelected:Landroid/graphics/drawable/Drawable;

    .line 96
    iput-object v7, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mBeforeSelected:Landroid/graphics/drawable/Drawable;

    .line 97
    iput-object v7, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mNomalUnselected:Landroid/graphics/drawable/Drawable;

    .line 98
    iput-object v7, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShapeHolder:Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;

    .line 99
    iput-boolean v6, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShowAnimationByClick:Z

    .line 100
    iput-boolean v6, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsDrag:Z

    .line 101
    iput-boolean v6, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsInterrupted:Z

    .line 102
    iput-boolean v6, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsBegin:Z

    .line 103
    iput-boolean v6, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsClicked:Z

    .line 104
    iput-boolean v6, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsCleared:Z

    .line 105
    iput-boolean v6, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsTransparent:Z

    .line 106
    iput v5, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mLeftOffset:F

    .line 107
    iput v5, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mRightOffset:F

    .line 108
    iput v5, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOutLength:F

    .line 109
    iput v5, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOffset:F

    .line 110
    iput v6, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabWidth:I

    .line 111
    iput v6, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mItemWidth:I

    .line 112
    iput v6, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mState:I

    .line 113
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mDrawText:Ljava/util/ArrayList;

    .line 114
    iput-object v7, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mLayout:Landroid/text/Layout;

    .line 115
    iput v6, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mDx:I

    .line 116
    new-instance v4, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl$1;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl$1;-><init>(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;)V

    iput-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mMoveListener:Landroid/animation/Animator$AnimatorListener;

    .line 150
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 151
    .local v1, "r":Landroid/content/res/Resources;
    invoke-virtual {p1, v9}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->setOverScrollMode(I)V

    .line 152
    const v4, 0xc05000f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    # setter for: Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabTextSize:I
    invoke-static {p1, v4}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->access$702(Lcom/android/internal/widget/OppoScrollingTabContainerView;I)I

    .line 153
    const v4, 0xc05043c

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    # setter for: Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabTextSizeSelected:I
    invoke-static {p1, v4}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->access$802(Lcom/android/internal/widget/OppoScrollingTabContainerView;I)I

    .line 156
    sget-object v4, Loppo/R$styleable;->OppoScrollingTabContainerView:[I

    const v5, 0xc01003f

    invoke-virtual {p2, v7, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 159
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mScorllingTabBackground:Landroid/graphics/drawable/Drawable;

    .line 160
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mScorllingTabBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 161
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mScorllingTabBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v4}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 163
    :cond_0
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mMoveDrawable:Landroid/graphics/drawable/Drawable;

    .line 164
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mMoveDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    .line 165
    const v4, 0xc080477

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mMoveDrawable:Landroid/graphics/drawable/Drawable;

    .line 168
    :cond_1
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mHeadSelected:Landroid/graphics/drawable/Drawable;

    .line 169
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mHeadSelected:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_2

    .line 170
    const v4, 0xc080471

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mHeadSelected:Landroid/graphics/drawable/Drawable;

    .line 173
    :cond_2
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mMiddleSelected:Landroid/graphics/drawable/Drawable;

    .line 175
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mMiddleSelected:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_3

    .line 176
    const v4, 0xc080473

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mMiddleSelected:Landroid/graphics/drawable/Drawable;

    .line 179
    :cond_3
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mTailSelected:Landroid/graphics/drawable/Drawable;

    .line 180
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mTailSelected:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_4

    .line 181
    const v4, 0xc080472

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mTailSelected:Landroid/graphics/drawable/Drawable;

    .line 184
    :cond_4
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAfterSelected:Landroid/graphics/drawable/Drawable;

    .line 185
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAfterSelected:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_5

    .line 186
    const v4, 0xc080475

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAfterSelected:Landroid/graphics/drawable/Drawable;

    .line 189
    :cond_5
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mBeforeSelected:Landroid/graphics/drawable/Drawable;

    .line 191
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mBeforeSelected:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_6

    .line 192
    const v4, 0xc080474

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mBeforeSelected:Landroid/graphics/drawable/Drawable;

    .line 195
    :cond_6
    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mNomalUnselected:Landroid/graphics/drawable/Drawable;

    .line 197
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mNomalUnselected:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_7

    .line 198
    const v4, 0xc080476

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mNomalUnselected:Landroid/graphics/drawable/Drawable;

    .line 201
    :cond_7
    const/16 v4, 0xa

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 203
    .local v2, "textColor":I
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    .line 204
    .local v3, "textColorAlpha":I
    if-lez v3, :cond_8

    const/16 v4, 0xff

    if-gt v3, v4, :cond_8

    .line 205
    iput v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mSelectedTextAlpha:I

    .line 210
    :cond_8
    const/4 v4, 0x7

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOutLength:F

    .line 212
    const/16 v4, 0x8

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOffset:F

    .line 214
    const/16 v4, 0xc

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsTransparent:Z

    .line 218
    new-instance v4, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;

    invoke-direct {v4, p1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;-><init>(Lcom/android/internal/widget/OppoScrollingTabContainerView;)V

    iput-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShapeHolder:Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;

    .line 219
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShapeHolder:Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;

    iget v5, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOutLength:F

    neg-float v5, v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;->setX(F)V

    .line 221
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    iput-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mTextPaint:Landroid/graphics/Paint;

    .line 222
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 223
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 224
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mTextPaint:Landroid/graphics/Paint;

    # getter for: Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabTextSizeSelected:I
    invoke-static {p1}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->access$800(Lcom/android/internal/widget/OppoScrollingTabContainerView;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 225
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mTextPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 227
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 228
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/widget/OppoScrollingTabContainerView;Landroid/content/Context;Lcom/android/internal/widget/OppoScrollingTabContainerView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$1;

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;-><init>(Lcom/android/internal/widget/OppoScrollingTabContainerView;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShowAnimationByClick:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->getTabTextPaddingLeft()I

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsBegin:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->getTabTextPaddingRight()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;
    .param p1, "x1"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->setTabSelected(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;Lcom/android/internal/widget/ScrollingTabContainerView$TabView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;
    .param p1, "x1"    # Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->addTab(Lcom/android/internal/widget/ScrollingTabContainerView$TabView;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;Lcom/android/internal/widget/ScrollingTabContainerView$TabView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;
    .param p1, "x1"    # Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    .param p2, "x2"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->addTab(Lcom/android/internal/widget/ScrollingTabContainerView$TabView;I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;
    .param p1, "x1"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->removeTabAt(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->removeAllTabs()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;Landroid/graphics/Canvas;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;
    .param p1, "x1"    # Landroid/graphics/Canvas;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->drawTab(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;III)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->measureMaxWidth(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsCleared:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;IFI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # F
    .param p3, "x3"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->updateAnimateTab(IFI)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;
    .param p1, "x1"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->updateScrollState(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->clearSelectTabBackground()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->updateTabBackground(II)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsInterrupted:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsClicked:Z

    return p1
.end method

.method private addTab(Lcom/android/internal/widget/ScrollingTabContainerView$TabView;)V
    .locals 3
    .param p1, "tabView"    # Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mDrawText:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mDrawText:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 269
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v0, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget v1, v1, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->updateTabBackground(II)V

    .line 270
    return-void
.end method

.method private addTab(Lcom/android/internal/widget/ScrollingTabContainerView$TabView;I)V
    .locals 2
    .param p1, "tabView"    # Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    .param p2, "position"    # I

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mDrawText:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 274
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v0, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget v1, v1, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->updateTabBackground(II)V

    .line 275
    return-void
.end method

.method private clearSelectTabBackground()V
    .locals 7

    .prologue
    .line 422
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsCleared:Z

    .line 423
    iget-object v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v3, v3, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 424
    .local v2, "tabCount":I
    iget v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mItemWidth:I

    if-gtz v3, :cond_0

    .line 425
    iget-object v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v3, v3, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    div-int/2addr v3, v2

    iput v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mItemWidth:I

    .line 426
    iget v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mItemWidth:I

    iget v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOutLength:F

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabWidth:I

    .line 428
    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsClicked:Z

    if-nez v3, :cond_1

    .line 429
    iget-object v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShapeHolder:Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;

    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v4}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->getPaddingLeft()I

    move-result v4

    iget v5, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mItemWidth:I

    iget-object v6, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget v6, v6, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mSelectedTabIndex:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOutLength:F

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;->setX(F)V

    .line 431
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 432
    iget-object v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v3, v3, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 433
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mNomalUnselected:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 434
    iget-object v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget v3, v3, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mSelectedTabIndex:I

    if-ne v3, v1, :cond_2

    .line 435
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 431
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 438
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    return-void
.end method

.method private createDrawable(I)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 286
    iget-object v2, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v2}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 287
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 288
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v2
.end method

.method private drawTab(Landroid/graphics/Canvas;)V
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 441
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsBegin:Z

    if-eqz v1, :cond_2

    .line 442
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 443
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShapeHolder:Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;

    invoke-virtual {v1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;->getX()F

    move-result v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOutLength:F

    neg-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOffset:F

    add-float/2addr v3, v4

    cmpg-float v1, v1, v3

    if-gez v1, :cond_3

    .line 444
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOffset:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShapeHolder:Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;

    invoke-virtual {v3}, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;->getX()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOutLength:F

    add-float/2addr v3, v4

    sub-float/2addr v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mLeftOffset:F

    .line 445
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mRightOffset:F

    .line 456
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShapeHolder:Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;

    invoke-virtual {v1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;->getX()F

    move-result v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mLeftOffset:F

    sub-float/2addr v1, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShapeHolder:Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;

    invoke-virtual {v3}, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;->getY()F

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 457
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mMoveDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mLeftOffset:F

    float-to-int v6, v6

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mRightOffset:F

    float-to-int v6, v6

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget v6, v6, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mContentHeight:I

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 459
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mMoveDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 460
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v11

    .line 462
    .local v11, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShapeHolder:Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;

    invoke-virtual {v1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;->getX()F

    move-result v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOutLength:F

    add-float/2addr v1, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v3}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mItemWidth:I

    int-to-float v3, v3

    div-float v18, v1, v3

    .line 463
    .local v18, "percent":F
    const-wide v3, 0x400999999999999aL    # 3.2

    move/from16 v0, v18

    float-to-double v5, v0

    move/from16 v0, v18

    float-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    sub-double/2addr v5, v7

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v5, v7

    mul-double/2addr v3, v5

    move/from16 v0, v18

    float-to-double v5, v0

    move/from16 v0, v18

    float-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    sub-double/2addr v5, v7

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v5, v7

    mul-double/2addr v3, v5

    const-wide v5, 0x3fc999999999999aL    # 0.2

    add-double/2addr v3, v5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mSelectedTextAlpha:I

    int-to-double v5, v1

    mul-double/2addr v3, v5

    double-to-int v9, v3

    .line 465
    .local v9, "alpha":I
    const-string v1, "OppoScrollingTabContainerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " drawTab : mIsTransparent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsTransparent:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsTransparent:Z

    if-eqz v1, :cond_0

    .line 467
    const/4 v9, 0x0

    .line 469
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 470
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 471
    .local v13, "index":I
    if-ltz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mDrawText:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v13, v1, :cond_6

    .line 472
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mDrawText:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->fixString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 473
    .local v2, "drawText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mLayout:Landroid/text/Layout;

    if-nez v1, :cond_1

    .line 474
    new-instance v1, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mTextPaint:Landroid/graphics/Paint;

    check-cast v3, Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabWidth:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mLeftOffset:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mLayout:Landroid/text/Layout;

    .line 490
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mLayout:Landroid/text/Layout;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v16

    .line 491
    .local v16, "lineRange":J
    invoke-static/range {v16 .. v17}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v10

    .line 492
    .local v10, "firstLine":I
    if-gez v10, :cond_5

    .line 505
    .end local v2    # "drawText":Ljava/lang/String;
    .end local v9    # "alpha":I
    .end local v10    # "firstLine":I
    .end local v11    # "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    .end local v13    # "index":I
    .end local v16    # "lineRange":J
    .end local v18    # "percent":F
    :cond_2
    :goto_1
    return-void

    .line 446
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShapeHolder:Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;

    invoke-virtual {v1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;->getX()F

    move-result v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v3, v3, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOutLength:F

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOffset:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v4}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    cmpl-float v1, v1, v3

    if-lez v1, :cond_4

    .line 448
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOffset:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v3, v3, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOutLength:F

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShapeHolder:Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;

    invoke-virtual {v4}, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    sub-float/2addr v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mRightOffset:F

    .line 451
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mLeftOffset:F

    goto/16 :goto_0

    .line 453
    :cond_4
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mLeftOffset:F

    .line 454
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mRightOffset:F

    goto/16 :goto_0

    .line 495
    .restart local v2    # "drawText":Ljava/lang/String;
    .restart local v9    # "alpha":I
    .restart local v10    # "firstLine":I
    .restart local v11    # "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    .restart local v13    # "index":I
    .restart local v16    # "lineRange":J
    .restart local v18    # "percent":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mLayout:Landroid/text/Layout;

    add-int/lit8 v3, v10, 0x1

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v15

    .line 496
    .local v15, "lbottom":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1, v10}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v1

    sub-int v14, v15, v1

    .line 497
    .local v14, "lbaseline":I
    iget v1, v11, Landroid/graphics/Paint$FontMetrics;->descent:F

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    iget v3, v11, Landroid/graphics/Paint$FontMetrics;->ascent:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    sub-int v12, v1, v3

    .line 500
    .local v12, "h2":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mLeftOffset:F

    add-float/2addr v1, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mDx:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget v3, v3, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mContentHeight:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v14

    div-int/lit8 v4, v12, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 503
    .end local v2    # "drawText":Ljava/lang/String;
    .end local v10    # "firstLine":I
    .end local v12    # "h2":I
    .end local v14    # "lbaseline":I
    .end local v15    # "lbottom":I
    .end local v16    # "lineRange":J
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_1
.end method

.method private fixString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 508
    if-nez p1, :cond_1

    .line 509
    const/4 p1, 0x0

    .line 531
    .end local p1    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 511
    .restart local p1    # "str":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v1, v3

    .line 512
    .local v1, "textWidth":I
    rem-int/lit8 v3, v1, 0x2

    iput v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mDx:I

    .line 513
    iget v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mItemWidth:I

    if-le v1, v3, :cond_0

    .line 514
    const-string v2, "."

    .line 515
    .local v2, "tmpTabLabel":Ljava/lang/String;
    const/4 v0, 0x0

    .line 516
    .local v0, "end":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 517
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 518
    iget-object v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v1, v3

    .line 519
    iget v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mItemWidth:I

    if-ge v1, v3, :cond_2

    .line 520
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 522
    :cond_2
    const/4 v3, 0x1

    if-le v0, v3, :cond_3

    .line 523
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 524
    iget-object v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v1, v3

    .line 529
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getTabTextPaddingLeft()I
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc050434

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getTabTextPaddingRight()I
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc050435

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private measureMaxWidth(III)I
    .locals 2
    .param p1, "width"    # I
    .param p2, "childCount"    # I
    .param p3, "defaultWidth"    # I

    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->getPaddingRight()I

    move-result v1

    sub-int p1, v0, v1

    .line 536
    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    .line 537
    div-int v0, p1, p2

    .line 539
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private removeAllTabs()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mDrawText:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 283
    return-void
.end method

.method private removeTabAt(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mDrawText:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 279
    return-void
.end method

.method private setTabSelected(I)V
    .locals 17
    .param p1, "position"    # I

    .prologue
    .line 292
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v13, v13, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v12

    .line 293
    .local v12, "tabCount":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget v10, v13, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mSelectedTabIndex:I

    .line 294
    .local v10, "oldeSelected":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    move/from16 v0, p1

    iput v0, v13, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mSelectedTabIndex:I

    .line 296
    if-lez v12, :cond_0

    .line 297
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v13, v13, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v13

    div-int/2addr v13, v12

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mItemWidth:I

    .line 300
    :cond_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mItemWidth:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOutLength:F

    float-to-int v14, v14

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabWidth:I

    .line 302
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsClicked:Z

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShowAnimationByClick:Z

    if-eqz v13, :cond_2

    .line 338
    :cond_1
    :goto_0
    return-void

    .line 304
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsClicked:Z

    if-nez v13, :cond_8

    .line 305
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v12, :cond_7

    .line 306
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v13, v13, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 307
    .local v5, "child":Landroid/view/View;
    move/from16 v0, p1

    if-ne v7, v0, :cond_4

    const/4 v8, 0x1

    .line 308
    .local v8, "isSelected":Z
    :goto_2
    invoke-virtual {v5, v8}, Landroid/view/View;->setSelected(Z)V

    .line 309
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mDrawText:Ljava/util/ArrayList;

    move-object v13, v5

    check-cast v13, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v13}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v7, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 311
    if-eqz v8, :cond_6

    .line 312
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->animateToTab(I)V

    .line 313
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsDrag:Z

    if-eqz v13, :cond_3

    .line 314
    if-nez v8, :cond_5

    const/4 v13, 0x1

    :goto_3
    invoke-virtual {v5, v13}, Landroid/view/View;->setSelected(Z)V

    .line 305
    :cond_3
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 307
    .end local v8    # "isSelected":Z
    :cond_4
    const/4 v8, 0x0

    goto :goto_2

    .line 314
    .restart local v8    # "isSelected":Z
    :cond_5
    const/4 v13, 0x0

    goto :goto_3

    .line 316
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsDrag:Z

    if-nez v13, :cond_3

    .line 317
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mNomalUnselected:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 321
    .end local v5    # "child":Landroid/view/View;
    .end local v8    # "isSelected":Z
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsDrag:Z

    if-nez v13, :cond_1

    .line 322
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v12, v1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->updateTabBackground(II)V

    goto :goto_0

    .line 325
    .end local v7    # "i":I
    :cond_8
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 326
    .local v2, "anim":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v13}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->getPaddingLeft()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mItemWidth:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget v15, v15, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mSelectedTabIndex:I

    mul-int/2addr v14, v15

    add-int/2addr v13, v14

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOutLength:F

    sub-float v6, v13, v14

    .line 327
    .local v6, "endTarsX":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v13}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->getPaddingLeft()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mItemWidth:I

    mul-int/2addr v14, v10

    add-int/2addr v13, v14

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOutLength:F

    sub-float v11, v13, v14

    .line 329
    .local v11, "startTarsX":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShapeHolder:Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;

    const-string v14, "x"

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    aput v11, v15, v16

    const/16 v16, 0x1

    aput v6, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 331
    .local v3, "animTras":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 332
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    .line 333
    .local v4, "b":Landroid/animation/AnimatorSet$Builder;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget v13, v13, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mSelectedTabIndex:I

    sub-int/2addr v13, v10

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 334
    .local v9, "offset":I
    add-int/lit8 v13, v9, 0x1

    mul-int/lit8 v13, v13, 0x64

    int-to-long v13, v13

    invoke-virtual {v2, v13, v14}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 335
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mMoveListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v13}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 336
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method

.method private updateAnimateTab(IFI)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 379
    iget-object v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mItemWidth:I

    int-to-float v2, v2

    int-to-float v3, p1

    add-float/2addr v3, p2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOutLength:F

    sub-float v0, v1, v2

    .line 380
    .local v0, "Offset":F
    iget-boolean v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShowAnimationByClick:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsClicked:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mState:I

    if-eqz v1, :cond_0

    .line 381
    iget-object v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShapeHolder:Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;->setX(F)V

    .line 382
    iget-object v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->invalidate()V

    .line 384
    :cond_0
    return-void
.end method

.method private updateScrollState(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 342
    const-string v0, "OppoScrollingTabContainerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateScrollState : state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 343
    if-nez p1, :cond_3

    .line 344
    iput-boolean v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsDrag:Z

    .line 345
    iget v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mState:I

    if-eq v0, v4, :cond_2

    .line 346
    iget-boolean v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsClicked:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShowAnimationByClick:Z

    if-nez v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v0, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget v1, v1, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->updateTabBackground(II)V

    .line 348
    iput-boolean v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsBegin:Z

    .line 354
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->invalidate()V

    .line 375
    :cond_1
    :goto_1
    iput p1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mState:I

    .line 376
    return-void

    .line 351
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v0, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget v1, v1, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->updateTabBackground(II)V

    .line 352
    iput-boolean v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsBegin:Z

    goto :goto_0

    .line 355
    :cond_3
    if-ne v4, p1, :cond_6

    .line 356
    iput-boolean v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsDrag:Z

    .line 357
    iput-boolean v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsBegin:Z

    .line 358
    iput-boolean v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShowAnimationByClick:Z

    .line 359
    iget-boolean v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsClicked:Z

    if-eqz v0, :cond_4

    .line 360
    iput-boolean v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsInterrupted:Z

    .line 361
    iput-boolean v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShowAnimationByClick:Z

    .line 362
    iput-boolean v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsClicked:Z

    .line 364
    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsCleared:Z

    if-nez v0, :cond_5

    .line 365
    invoke-direct {p0}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->clearSelectTabBackground()V

    .line 367
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->invalidate()V

    goto :goto_1

    .line 368
    :cond_6
    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    .line 369
    iget-boolean v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsCleared:Z

    if-nez v0, :cond_7

    .line 370
    invoke-direct {p0}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->clearSelectTabBackground()V

    .line 372
    :cond_7
    iput-boolean v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsDrag:Z

    .line 373
    iput-boolean v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsBegin:Z

    goto :goto_1
.end method

.method private updateTabBackground(II)V
    .locals 8
    .param p1, "count"    # I
    .param p2, "selected"    # I

    .prologue
    const/4 v7, 0x1

    .line 387
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    if-lt p2, p1, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsCleared:Z

    .line 391
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 392
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, v7}, Landroid/view/View;->setSelected(Z)V

    .line 393
    const-string v4, "OppoScrollingTabContainerView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--updateTabBackground()-- count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oppo/util/OppoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v4, "OppoScrollingTabContainerView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--updateTabBackground()-- selected = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oppo/util/OppoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    if-nez p2, :cond_2

    .line 397
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 398
    .local v1, "childSelected":Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mHeadSelected:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 399
    const-string v4, "OppoScrollingTabContainerView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--updateTabBackground()-- first = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oppo/util/OppoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    if-eq p1, v7, :cond_0

    .line 401
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 402
    .local v2, "childSelectedAfter":Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAfterSelected:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 404
    .end local v1    # "childSelected":Landroid/view/View;
    .end local v2    # "childSelectedAfter":Landroid/view/View;
    :cond_2
    add-int/lit8 v4, p1, -0x1

    if-ne v4, p2, :cond_3

    .line 405
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v5, p2, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 406
    .local v3, "childSelectedBefore":Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mBeforeSelected:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 407
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 408
    .restart local v1    # "childSelected":Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mTailSelected:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 409
    const-string v4, "OppoScrollingTabContainerView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--updateTabBackground()-- end = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oppo/util/OppoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 411
    .end local v1    # "childSelected":Landroid/view/View;
    .end local v3    # "childSelectedBefore":Landroid/view/View;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v5, p2, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 412
    .restart local v3    # "childSelectedBefore":Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mBeforeSelected:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 413
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 414
    .restart local v1    # "childSelected":Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mMiddleSelected:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 415
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 416
    .restart local v2    # "childSelectedAfter":Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAfterSelected:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 417
    const-string v4, "OppoScrollingTabContainerView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--updateTabBackground()-- middle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oppo/util/OppoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShowAnimationByClick:Z

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->invalidate()V

    .line 255
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 232
    iget-boolean v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsBegin:Z

    if-eqz v4, :cond_1

    .line 248
    :cond_0
    return-void

    .line 235
    :cond_1
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget v5, v5, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eq v4, p1, :cond_0

    .line 238
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsClicked:Z

    move-object v3, p1

    .line 239
    check-cast v3, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    .line 240
    .local v3, "tabView":Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    invoke-virtual {v3}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar$Tab;->select()V

    .line 241
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 242
    .local v2, "tabCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 243
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 244
    .local v0, "child":Landroid/view/View;
    if-eq v0, p1, :cond_2

    .line 245
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 242
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
