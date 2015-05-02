.class public Lcom/oppo/widget/OppoOptionMenuBar;
.super Landroid/widget/FrameLayout;
.source "OppoOptionMenuBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoOptionMenuBar$OnMenuVisibilityListener;,
        Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;
    }
.end annotation


# static fields
.field private static final ALPHA_BACKGROUND_EXPANDED:F = 0.3f

.field private static final BUTTON_MORE_ID:I = 0x7fffffff

.field private static final DEFAULT_FILL_LAYOUT_SPACE:Z = true

.field public static final DEFAULT_MAJOR_OPERATION_COUNT:I = 0x4

.field private static final FOURCHILD:I = 0x4

.field private static final LAYOUT_WEIGHT_DEFAULT:F = 1.0f

.field private static final LAYOUT_WEIGHT_ONE_WITH_ONE:F = 4.375f

.field private static final LAYOUT_WEIGHT_THREE_WITH_ONE:F = 1.458333f

.field private static final LAYOUT_WEIGHT_TWO_WITH_ONE:F = 2.1875f

.field private static final LOG_DEBUG:Z = false

.field private static final LOG_INVALIDATE:Z = false

.field private static final MAX_MAJOR_OPERTION_COUNT_IF_MORE_ENABLED:I = 0x3

.field private static final NONECHILD:I = 0x0

.field private static final ONECHILD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OppoOptionMenuBar"

.field private static final THREECHILD:I = 0x3

.field private static final TWOECHILD:I = 0x2


# instance fields
.field private final MSG_REFRESH_VIEWS:I

.field private final MSG_SCROLL_DOWN:I

.field private final MSG_SCROLL_UP:I

.field private QE_LOG:Z

.field private final REFRESH_VIEWS_DELAY_MILLIS:J

.field private isCurrentTopVisible:Z

.field private isCustomized:Z

.field private isEnterAminEnd:[Z

.field private isFillLayoutSpace:Z

.field private isFlowMenu:Z

.field private isGallery:Z

.field private isInflated:Z

.field private isMoreOperationGroupScrolling:Z

.field private isMoreOperationsEnabled:Z

.field private isMoreOperationsGroupExpanded:Z

.field private isMusic:Z

.field private isNeedDelayCall:Z

.field private isRefreshGallery:Z

.field private isStepIntoNewActivity:Z

.field private isViewPager:Z

.field private mClickDuration:J

.field private mContext:Landroid/content/Context;

.field private mCurrentShowAnim:[Landroid/animation/Animator;

.field private mDecorMask:Landroid/widget/ImageView;

.field private mDecorView:Landroid/view/View;

.field private mDelayCallItem:Lcom/oppo/widget/OppoMenuItem;

.field private mElementItemHeight:I

.field private mGalleryAdapter:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

.field private mGalleryItemClickListener:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$OnGalleryItemClickListener;

.field private mGalleryItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHasNavigationBar:Z

.field private mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mItemIdArray:[I

.field private mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mItemMiddleBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

.field mItemMoreAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mItemMoreIcon:Landroid/graphics/drawable/Drawable;

.field private mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

.field private mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

.field private mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

.field private mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mLeftItemTextColor:Landroid/content/res/ColorStateList;

.field private mMajorHopeCount:I

.field private mMajorOperationBg:Landroid/graphics/drawable/Drawable;

.field private mMajorOperationClickListener:Landroid/view/View$OnClickListener;

.field private mMajorOperationCount:I

.field private mMajorOperationDivider:Landroid/graphics/drawable/Drawable;

.field private mMajorOperationHeight:I

.field private mMajorOperationsGroup:Landroid/widget/LinearLayout;

.field private mMajorOperationsLayout:Landroid/widget/LinearLayout;

.field private mMajorOpertionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/widget/OppoOptionMenuBarItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMajorOpreationTextColor:Landroid/content/res/ColorStateList;

.field private mMajorTextSize:F

.field private mMenuInflater:Lcom/oppo/widget/OppoMenuInflater;

.field private mMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/widget/OppoOptionMenuBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMiddleItemTextColor:Landroid/content/res/ColorStateList;

.field private mMoreOpertationsGroup:Landroid/widget/Gallery;

.field private mMoreOptionMenuBarHeight:I

.field private mNavBarHeight:I

.field private mOffsetedDistance:[I

.field private mOptionsItemSelectedListener:Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;

.field private mPreviousClickUpTime:J

.field private mRightItemTextColor:Landroid/content/res/ColorStateList;

.field private mScrollAnimationDuration:J

.field private mVisibleMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mVisiblity:I

.field private offsetHeight:I

.field private offsetedDistance:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 218
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoOptionMenuBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 219
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->onFinishInflate()V

    .line 220
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 223
    const v0, 0xc010426

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoOptionMenuBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 224
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 227
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->QE_LOG:Z

    .line 94
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mContext:Landroid/content/Context;

    .line 97
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isCustomized:Z

    .line 103
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isCurrentTopVisible:Z

    .line 105
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isInflated:Z

    .line 107
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isStepIntoNewActivity:Z

    .line 108
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isRefreshGallery:Z

    .line 110
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isFlowMenu:Z

    .line 112
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isFillLayoutSpace:Z

    .line 113
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    .line 114
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    .line 115
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    .line 117
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isViewPager:Z

    .line 118
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMusic:Z

    .line 119
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isGallery:Z

    .line 121
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuInflater:Lcom/oppo/widget/OppoMenuInflater;

    .line 122
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    .line 124
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryItems:Ljava/util/List;

    .line 127
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    .line 129
    const/4 v9, 0x4

    iput v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationCount:I

    .line 130
    const/4 v9, 0x4

    iput v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorHopeCount:I

    .line 132
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 133
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 134
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 135
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 137
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    .line 139
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    .line 140
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    .line 142
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorView:Landroid/view/View;

    .line 143
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    .line 145
    const/4 v9, 0x0

    iput v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisiblity:I

    .line 147
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryAdapter:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    .line 149
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mOptionsItemSelectedListener:Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;

    .line 151
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 154
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMoreIcon:Landroid/graphics/drawable/Drawable;

    .line 155
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationDivider:Landroid/graphics/drawable/Drawable;

    .line 157
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 158
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 159
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMiddleBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 160
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 162
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationBg:Landroid/graphics/drawable/Drawable;

    .line 164
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mPreviousClickUpTime:J

    .line 165
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isNeedDelayCall:Z

    .line 166
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDelayCallItem:Lcom/oppo/widget/OppoMenuItem;

    .line 175
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mClickDuration:J

    .line 181
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpertionList:Ljava/util/ArrayList;

    .line 183
    const/4 v9, 0x0

    iput v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationHeight:I

    .line 184
    const/4 v9, 0x0

    iput v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOptionMenuBarHeight:I

    .line 186
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpreationTextColor:Landroid/content/res/ColorStateList;

    .line 189
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mLeftItemTextColor:Landroid/content/res/ColorStateList;

    .line 190
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMiddleItemTextColor:Landroid/content/res/ColorStateList;

    .line 191
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mRightItemTextColor:Landroid/content/res/ColorStateList;

    .line 194
    const/4 v9, 0x0

    iput v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorTextSize:F

    .line 197
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mHasNavigationBar:Z

    .line 198
    const/4 v9, 0x0

    iput v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mNavBarHeight:I

    .line 464
    new-instance v9, Lcom/oppo/widget/OppoOptionMenuBar$1;

    invoke-direct {v9, p0}, Lcom/oppo/widget/OppoOptionMenuBar$1;-><init>(Lcom/oppo/widget/OppoOptionMenuBar;)V

    iput-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationClickListener:Landroid/view/View$OnClickListener;

    .line 506
    new-instance v9, Lcom/oppo/widget/OppoOptionMenuBar$2;

    invoke-direct {v9, p0}, Lcom/oppo/widget/OppoOptionMenuBar$2;-><init>(Lcom/oppo/widget/OppoOptionMenuBar;)V

    iput-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryItemClickListener:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$OnGalleryItemClickListener;

    .line 1752
    const/4 v9, 0x0

    iput v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->MSG_SCROLL_UP:I

    .line 1753
    const/4 v9, 0x1

    iput v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->MSG_SCROLL_DOWN:I

    .line 1755
    const/4 v9, 0x2

    iput v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->MSG_REFRESH_VIEWS:I

    .line 1757
    const-wide/16 v9, 0xa

    iput-wide v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->REFRESH_VIEWS_DELAY_MILLIS:J

    .line 1759
    new-instance v9, Lcom/oppo/widget/OppoOptionMenuBar$4;

    invoke-direct {v9, p0}, Lcom/oppo/widget/OppoOptionMenuBar$4;-><init>(Lcom/oppo/widget/OppoOptionMenuBar;)V

    iput-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mHandler:Landroid/os/Handler;

    .line 1777
    const-wide/16 v9, 0xfa

    iput-wide v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mScrollAnimationDuration:J

    .line 1851
    const/4 v9, 0x0

    iput v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->offsetedDistance:I

    .line 1852
    const/4 v9, 0x0

    iput v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->offsetHeight:I

    .line 2633
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMoreAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 2664
    const/4 v9, 0x4

    new-array v9, v9, [I

    fill-array-data v9, :array_0

    iput-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mOffsetedDistance:[I

    .line 2665
    const/4 v9, 0x4

    new-array v9, v9, [Z

    fill-array-data v9, :array_1

    iput-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isEnterAminEnd:[Z

    .line 2666
    const/4 v9, 0x0

    iput v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mElementItemHeight:I

    .line 2667
    const/4 v9, 0x4

    new-array v9, v9, [I

    fill-array-data v9, :array_2

    iput-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemIdArray:[I

    .line 2672
    const/4 v9, 0x4

    new-array v9, v9, [Landroid/animation/Animator;

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const/4 v11, 0x0

    aput-object v11, v9, v10

    iput-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mCurrentShowAnim:[Landroid/animation/Animator;

    .line 229
    const-string v9, "persist.sys.assert.panic"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->QE_LOG:Z

    .line 232
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1110045

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    iput-boolean v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mHasNavigationBar:Z

    .line 233
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x105000d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mNavBarHeight:I

    .line 235
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0xc05041d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 236
    .local v3, "defHeight":I
    move v6, v3

    .line 239
    .local v6, "height":I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0xc05041f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mElementItemHeight:I

    .line 241
    iget v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mElementItemHeight:I

    iput v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOptionMenuBarHeight:I

    .line 242
    sget-object v9, Loppo/R$styleable;->OppoOptionMenuBar:[I

    const/4 v10, 0x0

    invoke-virtual {p1, p2, v9, p3, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 245
    .local v0, "a":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 247
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isFillLayoutSpace:Z

    .line 250
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 253
    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 255
    const/4 v9, 0x3

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMiddleBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 258
    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 260
    const/4 v9, 0x5

    invoke-virtual {v0, v9, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 263
    const/4 v9, 0x7

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMoreIcon:Landroid/graphics/drawable/Drawable;

    .line 273
    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    iput-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpreationTextColor:Landroid/content/res/ColorStateList;

    .line 275
    const/16 v9, 0x9

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationBg:Landroid/graphics/drawable/Drawable;

    .line 278
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 312
    :cond_0
    if-gtz v6, :cond_1

    .line 313
    move v6, v3

    .line 315
    :cond_1
    iput v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationHeight:I

    .line 316
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0xc050458

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    iput v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorTextSize:F

    .line 321
    sget-object v9, Landroid/R$styleable;->Theme:[I

    invoke-virtual {p1, p2, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 323
    .local v1, "b":Landroid/content/res/TypedArray;
    if-eqz v1, :cond_3

    .line 324
    const/16 v9, 0x24

    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 325
    .local v8, "windowBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_2

    .line 326
    invoke-super {p0, v8}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 329
    :cond_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 333
    .end local v8    # "windowBackground":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->init(Landroid/content/Context;)V

    .line 337
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/oppo/widget/OppoOptionMenuBar;->setMotionEventSplittingEnabled(Z)V

    .line 344
    const-string v4, "com.oppo.filemanager"

    .line 345
    .local v4, "fileManager":Ljava/lang/String;
    const-string v2, "com.oppo.alarmclock"

    .line 346
    .local v2, "clock":Ljava/lang/String;
    const-string v7, "com.oppo.music"

    .line 347
    .local v7, "music":Ljava/lang/String;
    const-string v5, "com.oppo.gallery3d"

    .line 349
    .local v5, "gallery":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 352
    :cond_4
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isViewPager:Z

    .line 354
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 355
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMusic:Z

    .line 357
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 358
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isGallery:Z

    .line 362
    :cond_7
    return-void

    .line 2664
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 2665
    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 2667
    :array_2
    .array-data 4
        0xc020462
        0xc020463
        0xc020464
        0xc020465
    .end array-data
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoOptionMenuBar;)J
    .locals 2
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mPreviousClickUpTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/oppo/widget/OppoOptionMenuBar;J)J
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;
    .param p1, "x1"    # J

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mPreviousClickUpTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/oppo/widget/OppoOptionMenuBar;)J
    .locals 2
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mClickDuration:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/oppo/widget/OppoOptionMenuBar;)Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryAdapter:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/oppo/widget/OppoOptionMenuBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->refreshViews()V

    return-void
.end method

.method static synthetic access$1200(Lcom/oppo/widget/OppoOptionMenuBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 69
    iget v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->offsetedDistance:I

    return v0
.end method

.method static synthetic access$1202(Lcom/oppo/widget/OppoOptionMenuBar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->offsetedDistance:I

    return p1
.end method

.method static synthetic access$1300(Lcom/oppo/widget/OppoOptionMenuBar;)Landroid/widget/Gallery;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/oppo/widget/OppoOptionMenuBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->QE_LOG:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/oppo/widget/OppoOptionMenuBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 69
    iget v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->offsetHeight:I

    return v0
.end method

.method static synthetic access$1600(Lcom/oppo/widget/OppoOptionMenuBar;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/oppo/widget/OppoOptionMenuBar;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->dispatchMenuVisibilityChanged(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/oppo/widget/OppoOptionMenuBar;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getOffsetViews()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/oppo/widget/OppoOptionMenuBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->hasTranslucentNavBar()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/oppo/widget/OppoOptionMenuBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/oppo/widget/OppoOptionMenuBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->isOrientationPortrait()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/oppo/widget/OppoOptionMenuBar;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/oppo/widget/OppoOptionMenuBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 69
    iget v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mNavBarHeight:I

    return v0
.end method

.method static synthetic access$2300(Lcom/oppo/widget/OppoOptionMenuBar;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isEnterAminEnd:[Z

    return-object v0
.end method

.method static synthetic access$2400(Lcom/oppo/widget/OppoOptionMenuBar;)[Landroid/animation/Animator;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mCurrentShowAnim:[Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oppo/widget/OppoOptionMenuBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    return v0
.end method

.method static synthetic access$302(Lcom/oppo/widget/OppoOptionMenuBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    return p1
.end method

.method static synthetic access$400(Lcom/oppo/widget/OppoOptionMenuBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    return v0
.end method

.method static synthetic access$402(Lcom/oppo/widget/OppoOptionMenuBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    return p1
.end method

.method static synthetic access$500(Lcom/oppo/widget/OppoOptionMenuBar;)Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mOptionsItemSelectedListener:Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oppo/widget/OppoOptionMenuBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isNeedDelayCall:Z

    return v0
.end method

.method static synthetic access$602(Lcom/oppo/widget/OppoOptionMenuBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isNeedDelayCall:Z

    return p1
.end method

.method static synthetic access$700(Lcom/oppo/widget/OppoOptionMenuBar;)Lcom/oppo/widget/OppoMenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDelayCallItem:Lcom/oppo/widget/OppoMenuItem;

    return-object v0
.end method

.method static synthetic access$702(Lcom/oppo/widget/OppoOptionMenuBar;Lcom/oppo/widget/OppoMenuItem;)Lcom/oppo/widget/OppoMenuItem;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;
    .param p1, "x1"    # Lcom/oppo/widget/OppoMenuItem;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDelayCallItem:Lcom/oppo/widget/OppoMenuItem;

    return-object p1
.end method

.method static synthetic access$800(Lcom/oppo/widget/OppoOptionMenuBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->resetPositionToDefault()V

    return-void
.end method

.method static synthetic access$902(Lcom/oppo/widget/OppoOptionMenuBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isStepIntoNewActivity:Z

    return p1
.end method

.method private dispatchMenuVisibilityChanged(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    .line 2305
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2306
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2307
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoOptionMenuBar$OnMenuVisibilityListener;

    invoke-interface {v2, p1}, Lcom/oppo/widget/OppoOptionMenuBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    .line 2306
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2309
    :cond_0
    return-void
.end method

.method private getDecorView()Landroid/view/View;
    .locals 4

    .prologue
    .line 2076
    const/4 v1, 0x0

    .line 2079
    .local v1, "decorView":Landroid/view/View;
    :try_start_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 2080
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2085
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return-object v1

    .line 2081
    :catch_0
    move-exception v2

    .line 2082
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getFadeAnimator(Landroid/widget/ImageView;Z)Landroid/animation/Animator;
    .locals 5
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "fadeIn"    # Z

    .prologue
    const v3, 0x3e99999a    # 0.3f

    const/4 v0, 0x0

    .line 1828
    if-eqz p2, :cond_0

    move v2, v3

    .line 1829
    .local v2, "start":F
    :goto_0
    if-eqz p2, :cond_1

    .line 1831
    .local v0, "end":F
    :goto_1
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v4, 0x1

    aput v0, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1832
    .local v1, "fadeAnim":Landroid/animation/ValueAnimator;
    iget-wide v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mScrollAnimationDuration:J

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1834
    new-instance v3, Lcom/oppo/widget/OppoOptionMenuBar$5;

    invoke-direct {v3, p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar$5;-><init>(Lcom/oppo/widget/OppoOptionMenuBar;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1848
    return-object v1

    .end local v0    # "end":F
    .end local v1    # "fadeAnim":Landroid/animation/ValueAnimator;
    .end local v2    # "start":F
    :cond_0
    move v2, v0

    .line 1828
    goto :goto_0

    .restart local v2    # "start":F
    :cond_1
    move v0, v3

    .line 1829
    goto :goto_1
.end method

.method private getOffsetViews()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2204
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2206
    .local v1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2207
    .local v0, "offsetView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2208
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2219
    :cond_0
    iget-boolean v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isViewPager:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    if-nez v2, :cond_1

    .line 2220
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->setupDecorMask()V

    .line 2224
    :cond_1
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 2225
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2228
    :cond_2
    return-object v1
.end method

.method private hasTranslucentNavBar()Z
    .locals 1

    .prologue
    .line 2067
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mHasNavigationBar:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isFillLayoutSpace:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isGallery:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inflateMajorOperationView()V
    .locals 3

    .prologue
    .line 620
    new-instance v1, Lcom/oppo/widget/OppoOptionMenuBarMajorOperationLayout;

    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/oppo/widget/OppoOptionMenuBarMajorOperationLayout;-><init>(Landroid/content/Context;Lcom/oppo/widget/OppoOptionMenuBar;)V

    iput-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    .line 622
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 624
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 627
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->hasTranslucentNavBar()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->isOrientationPortrait()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 628
    iget v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mNavBarHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 632
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 635
    return-void
.end method

.method private inflateMoreOperationView()V
    .locals 0

    .prologue
    .line 650
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mContext:Landroid/content/Context;

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpertionList:Ljava/util/ArrayList;

    .line 370
    new-instance v0, Lcom/oppo/widget/OppoMenuInflater;

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuInflater:Lcom/oppo/widget/OppoMenuInflater;

    .line 372
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    .line 373
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryItems:Ljava/util/List;

    .line 375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    .line 377
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->inflateMoreOperationView()V

    .line 381
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->setFocusableInTouchMode(Z)V

    .line 386
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0d0413

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mScrollAnimationDuration:J

    .line 389
    return-void
.end method

.method private invalidateOptionMenuBar(J)V
    .locals 2
    .param p1, "delayMillis"    # J

    .prologue
    const/4 v1, 0x2

    .line 1237
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1238
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1239
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1246
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1249
    :cond_1
    return-void
.end method

.method private isOrientationPortrait()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2071
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshGallery()V
    .locals 4

    .prologue
    .line 977
    iget-boolean v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isRefreshGallery:Z

    if-nez v1, :cond_1

    .line 1001
    :cond_0
    :goto_0
    return-void

    .line 983
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    invoke-virtual {v1}, Landroid/widget/Gallery;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 984
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Gallery;->setVisibility(I)V

    .line 988
    :cond_2
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryItems:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 989
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryAdapter:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 990
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryAdapter:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryItems:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->setGalleryItems(Ljava/util/List;)V

    .line 991
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryAdapter:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 995
    :catch_0
    move-exception v0

    .line 996
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "OppoOptionMenuBar"

    const-string v2, "mMoreOpertationsGroup is null! If you want to use OppoOptionMenuBar,please define oppo theme styles in AndroidManifest.xml"

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private refreshViews()V
    .locals 12

    .prologue
    .line 734
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v10}, Lcom/oppo/widget/OppoOptionMenuBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 735
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorTextSize:F

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleTextSize(F)V

    .line 736
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorTextSize:F

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleTextSize(F)V

    .line 737
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorTextSize:F

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleTextSize(F)V

    .line 738
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorTextSize:F

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleTextSize(F)V

    .line 740
    iget v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorHopeCount:I

    iput v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationCount:I

    .line 742
    iget v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorHopeCount:I

    if-nez v10, :cond_0

    .line 743
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 746
    :cond_0
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    if-eqz v10, :cond_1

    .line 747
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 750
    :cond_1
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoMenuItem;

    .line 751
    .local v1, "e":Lcom/oppo/widget/OppoMenuItem;
    invoke-interface {v1}, Lcom/oppo/widget/OppoMenuItem;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 752
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 756
    .end local v1    # "e":Lcom/oppo/widget/OppoMenuItem;
    :cond_3
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    .line 758
    .local v4, "menuItemsSize":I
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    .line 760
    .local v9, "visibleMenuItemsSize":I
    iget v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorHopeCount:I

    if-le v9, v10, :cond_6

    .line 761
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    .line 772
    :goto_1
    iget-boolean v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    if-eqz v10, :cond_4

    iget v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationCount:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_4

    .line 773
    const/4 v10, 0x3

    iput v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationCount:I

    .line 782
    :cond_4
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpertionList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 784
    iget v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationCount:I

    packed-switch v10, :pswitch_data_0

    .line 880
    :cond_5
    :goto_2
    iget-boolean v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    if-eqz v10, :cond_d

    .line 882
    new-instance v5, Lcom/oppo/widget/OppoMenuItemImpl;

    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mContext:Landroid/content/Context;

    invoke-direct {v5, v10}, Lcom/oppo/widget/OppoMenuItemImpl;-><init>(Landroid/content/Context;)V

    .line 884
    .local v5, "moreMenuItem":Lcom/oppo/widget/OppoMenuItem;
    const v10, 0x7fffffff

    invoke-interface {v5, v10}, Lcom/oppo/widget/OppoMenuItem;->setItemId(I)Landroid/view/MenuItem;

    .line 885
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMoreIcon:Landroid/graphics/drawable/Drawable;

    invoke-interface {v5, v10}, Lcom/oppo/widget/OppoMenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 886
    const/4 v10, 0x1

    invoke-interface {v5, v10}, Lcom/oppo/widget/OppoMenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 892
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->isEnabled()Z

    move-result v10

    invoke-interface {v5, v10}, Lcom/oppo/widget/OppoMenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 894
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v5}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 896
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryItems:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 898
    iget v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationCount:I

    .local v2, "i":I
    :goto_3
    if-ge v2, v9, :cond_c

    .line 899
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryItems:Ljava/util/List;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 898
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 763
    .end local v2    # "i":I
    .end local v5    # "moreMenuItem":Lcom/oppo/widget/OppoMenuItem;
    :cond_6
    iput v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationCount:I

    .line 765
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    goto :goto_1

    .line 786
    :pswitch_0
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setVisibility(I)V

    .line 787
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setVisibility(I)V

    .line 788
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setVisibility(I)V

    .line 789
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setVisibility(I)V

    goto :goto_2

    .line 794
    :pswitch_1
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oppo/widget/OppoMenuItem;

    .line 795
    .local v8, "positiveMenuItem":Lcom/oppo/widget/OppoMenuItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v8}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 796
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setVisibility(I)V

    .line 797
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setVisibility(I)V

    .line 798
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setVisibility(I)V

    .line 801
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpreationTextColor:Landroid/content/res/ColorStateList;

    if-eqz v10, :cond_5

    .line 802
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpreationTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_2

    .line 809
    .end local v8    # "positiveMenuItem":Lcom/oppo/widget/OppoMenuItem;
    :pswitch_2
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oppo/widget/OppoMenuItem;

    .line 810
    .restart local v8    # "positiveMenuItem":Lcom/oppo/widget/OppoMenuItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v8}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 811
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oppo/widget/OppoMenuItem;

    .line 812
    .local v6, "negativeMenuItem":Lcom/oppo/widget/OppoMenuItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v6}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 813
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setVisibility(I)V

    .line 814
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setVisibility(I)V

    .line 817
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mLeftItemTextColor:Landroid/content/res/ColorStateList;

    if-eqz v10, :cond_7

    .line 818
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mLeftItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    .line 820
    :cond_7
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mRightItemTextColor:Landroid/content/res/ColorStateList;

    if-eqz v10, :cond_5

    .line 821
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mRightItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_2

    .line 828
    .end local v6    # "negativeMenuItem":Lcom/oppo/widget/OppoMenuItem;
    .end local v8    # "positiveMenuItem":Lcom/oppo/widget/OppoMenuItem;
    :pswitch_3
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oppo/widget/OppoMenuItem;

    .line 829
    .restart local v8    # "positiveMenuItem":Lcom/oppo/widget/OppoMenuItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v8}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 830
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oppo/widget/OppoMenuItem;

    .line 831
    .restart local v6    # "negativeMenuItem":Lcom/oppo/widget/OppoMenuItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v6}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 832
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    const/4 v11, 0x2

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oppo/widget/OppoMenuItem;

    .line 833
    .local v7, "neutralMenuItem":Lcom/oppo/widget/OppoMenuItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v7}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 834
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setVisibility(I)V

    .line 837
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mLeftItemTextColor:Landroid/content/res/ColorStateList;

    if-eqz v10, :cond_8

    .line 838
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mLeftItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    .line 840
    :cond_8
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMiddleItemTextColor:Landroid/content/res/ColorStateList;

    if-eqz v10, :cond_9

    .line 841
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMiddleItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    .line 843
    :cond_9
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mRightItemTextColor:Landroid/content/res/ColorStateList;

    if-eqz v10, :cond_5

    .line 844
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mRightItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_2

    .line 851
    .end local v6    # "negativeMenuItem":Lcom/oppo/widget/OppoMenuItem;
    .end local v7    # "neutralMenuItem":Lcom/oppo/widget/OppoMenuItem;
    .end local v8    # "positiveMenuItem":Lcom/oppo/widget/OppoMenuItem;
    :pswitch_4
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oppo/widget/OppoMenuItem;

    .line 852
    .restart local v8    # "positiveMenuItem":Lcom/oppo/widget/OppoMenuItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v8}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 853
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oppo/widget/OppoMenuItem;

    .line 854
    .restart local v6    # "negativeMenuItem":Lcom/oppo/widget/OppoMenuItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v6}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 855
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    const/4 v11, 0x2

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oppo/widget/OppoMenuItem;

    .line 856
    .restart local v7    # "neutralMenuItem":Lcom/oppo/widget/OppoMenuItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v7}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 857
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    const/4 v11, 0x3

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oppo/widget/OppoMenuItem;

    .line 858
    .restart local v5    # "moreMenuItem":Lcom/oppo/widget/OppoMenuItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v5}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 859
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->disableItemMoreAnimation()V

    .line 862
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mLeftItemTextColor:Landroid/content/res/ColorStateList;

    if-eqz v10, :cond_a

    .line 863
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mLeftItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    .line 865
    :cond_a
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMiddleItemTextColor:Landroid/content/res/ColorStateList;

    if-eqz v10, :cond_b

    .line 866
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMiddleItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    .line 867
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMiddleItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    .line 869
    :cond_b
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mRightItemTextColor:Landroid/content/res/ColorStateList;

    if-eqz v10, :cond_5

    .line 870
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mRightItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_2

    .line 907
    .end local v6    # "negativeMenuItem":Lcom/oppo/widget/OppoMenuItem;
    .end local v7    # "neutralMenuItem":Lcom/oppo/widget/OppoMenuItem;
    .end local v8    # "positiveMenuItem":Lcom/oppo/widget/OppoMenuItem;
    .restart local v2    # "i":I
    :cond_c
    iget-boolean v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isViewPager:Z

    if-nez v10, :cond_d

    .line 908
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->refreshGallery()V

    .line 927
    .end local v2    # "i":I
    .end local v5    # "moreMenuItem":Lcom/oppo/widget/OppoMenuItem;
    :cond_d
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpertionList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 929
    .local v0, "count":I
    iget-boolean v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isCustomized:Z

    if-nez v10, :cond_e

    iget-boolean v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    if-nez v10, :cond_12

    .line 931
    :cond_e
    const/4 v10, 0x1

    if-ne v0, v10, :cond_f

    .line 932
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpertionList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 933
    .local v1, "e":Lcom/oppo/widget/OppoOptionMenuBarItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v10}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 935
    .end local v1    # "e":Lcom/oppo/widget/OppoOptionMenuBarItem;
    :cond_f
    const/4 v10, 0x1

    if-le v0, v10, :cond_14

    .line 936
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5
    if-ge v2, v0, :cond_14

    .line 937
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpertionList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 939
    .restart local v1    # "e":Lcom/oppo/widget/OppoOptionMenuBarItem;
    if-nez v2, :cond_10

    .line 940
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v10}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    .line 936
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 941
    :cond_10
    add-int/lit8 v10, v0, -0x1

    if-ne v2, v10, :cond_11

    .line 942
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v10}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 945
    :cond_11
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMiddleBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v10}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 952
    .end local v1    # "e":Lcom/oppo/widget/OppoOptionMenuBarItem;
    .end local v2    # "i":I
    :cond_12
    const/4 v10, 0x1

    if-ne v0, v10, :cond_13

    .line 953
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpertionList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 954
    .restart local v1    # "e":Lcom/oppo/widget/OppoOptionMenuBarItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v10}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 956
    .end local v1    # "e":Lcom/oppo/widget/OppoOptionMenuBarItem;
    :cond_13
    const/4 v10, 0x2

    if-ne v0, v10, :cond_15

    .line 957
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v10, v11}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    .line 958
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v10, v11}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    .line 971
    :cond_14
    :goto_8
    return-void

    .line 959
    :cond_15
    const/4 v10, 0x3

    if-ne v0, v10, :cond_16

    .line 960
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v10, v11}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    .line 961
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v10, v11}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    .line 962
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v10, v11}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    .line 963
    :cond_16
    const/4 v10, 0x4

    if-ne v0, v10, :cond_14

    .line 964
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v10, v11}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    .line 965
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMiddleBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v10, v11}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    .line 966
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v10, v11}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    .line 967
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v10, v11}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    .line 784
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private resetPositionToDefault()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 2381
    iget-boolean v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    if-nez v1, :cond_1

    .line 2382
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getMoreOptionMenuBarHeight()I

    move-result v0

    .line 2384
    .local v0, "height":I
    iget v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->offsetHeight:I

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoOptionMenuBar;->onOffsetToDefault(I)V

    .line 2388
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->startElementItemAnimationDown()V

    .line 2391
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    .line 2393
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 2394
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2397
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    if-eqz v1, :cond_1

    .line 2398
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    invoke-virtual {v1, v2}, Landroid/widget/Gallery;->setVisibility(I)V

    .line 2401
    .end local v0    # "height":I
    :cond_1
    return-void
.end method

.method private resolveKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 2250
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 2251
    .local v1, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    .line 2252
    .local v0, "canceled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v2

    .line 2254
    .local v2, "longPressed":Z
    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->QE_LOG:Z

    if-eqz v4, :cond_0

    .line 2255
    const-string v4, "OppoOptionMenuBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "on key up...enabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",scrolling="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",expanded="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "canceled ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "long press="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2261
    :cond_0
    if-nez v0, :cond_1

    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    if-nez v0, :cond_7

    iget v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorHopeCount:I

    if-nez v4, :cond_7

    .line 2263
    :cond_2
    const/4 v4, 0x4

    if-ne v4, v1, :cond_5

    .line 2264
    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    if-eqz v4, :cond_4

    .line 2292
    :cond_3
    :goto_0
    return v3

    .line 2266
    :cond_4
    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    if-eqz v4, :cond_5

    .line 2268
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->startScrollDown()V

    goto :goto_0

    .line 2273
    :cond_5
    const/16 v4, 0x52

    if-ne v4, v1, :cond_7

    .line 2274
    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-virtual {v4}, Lcom/oppo/widget/OppoOptionMenuBarItem;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2276
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->startScrollUp()V

    goto :goto_0

    .line 2279
    :cond_6
    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-virtual {v4}, Lcom/oppo/widget/OppoOptionMenuBarItem;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2281
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->startScrollDown()V

    goto :goto_0

    .line 2292
    :cond_7
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private scrollView(Z)V
    .locals 5
    .param p1, "isScrollDown"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1859
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    .line 1860
    iget-boolean v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->QE_LOG:Z

    if-eqz v1, :cond_0

    .line 1861
    const-string v1, "OppoOptionMenuBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDecorMask is null when scrollView isScrollDown ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    :cond_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->setupDecorMask()V

    .line 1869
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    if-nez v1, :cond_3

    .line 1870
    iget-boolean v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->QE_LOG:Z

    if-eqz v1, :cond_2

    .line 1871
    const-string v1, "OppoOptionMenuBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDecorMask is null again when scrollView isScrollDown ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    :cond_2
    :goto_0
    return-void

    .line 1877
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getMoreOptionMenuBarHeight()I

    move-result v1

    iput v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->offsetHeight:I

    .line 1880
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->hasTranslucentNavBar()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->isOrientationPortrait()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1881
    iget v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->offsetHeight:I

    iget v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mNavBarHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->offsetHeight:I

    .line 1885
    :cond_4
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v4, v1, v4

    const/4 v2, 0x1

    iget v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->offsetHeight:I

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1886
    .local v0, "offsetAnim":Landroid/animation/ValueAnimator;
    iget-wide v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mScrollAnimationDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1887
    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 1889
    if-eqz p1, :cond_5

    .line 1890
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1916
    :goto_1
    iput v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->offsetedDistance:I

    .line 1917
    new-instance v1, Lcom/oppo/widget/OppoOptionMenuBar$7;

    invoke-direct {v1, p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar$7;-><init>(Lcom/oppo/widget/OppoOptionMenuBar;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1938
    new-instance v1, Lcom/oppo/widget/OppoOptionMenuBar$8;

    invoke-direct {v1, p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar$8;-><init>(Lcom/oppo/widget/OppoOptionMenuBar;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2053
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 1906
    :cond_5
    new-instance v1, Lcom/oppo/widget/OppoOptionMenuBar$6;

    invoke-direct {v1, p0}, Lcom/oppo/widget/OppoOptionMenuBar$6;-><init>(Lcom/oppo/widget/OppoOptionMenuBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1
.end method

.method private setElementItemAnimationDown(Landroid/widget/TextView;I)V
    .locals 6
    .param p1, "elementItem"    # Landroid/widget/TextView;
    .param p2, "position"    # I

    .prologue
    const/4 v5, 0x2

    .line 2731
    if-eqz p1, :cond_1

    .line 2732
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mCurrentShowAnim:[Landroid/animation/Animator;

    aget-object v3, v3, p2

    if-eqz v3, :cond_0

    .line 2733
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mCurrentShowAnim:[Landroid/animation/Animator;

    aget-object v3, v3, p2

    invoke-virtual {v3}, Landroid/animation/Animator;->end()V

    .line 2735
    :cond_0
    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 2736
    .local v1, "objectAnimatorX":Landroid/animation/ObjectAnimator;
    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 2737
    .local v2, "objectAnimatorY":Landroid/animation/ObjectAnimator;
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2738
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2739
    iget-wide v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mScrollAnimationDuration:J

    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2740
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2741
    new-instance v3, Lcom/oppo/widget/OppoOptionMenuBar$10;

    invoke-direct {v3, p0, p2}, Lcom/oppo/widget/OppoOptionMenuBar$10;-><init>(Lcom/oppo/widget/OppoOptionMenuBar;I)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2747
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2748
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mCurrentShowAnim:[Landroid/animation/Animator;

    aput-object v0, v3, p2

    .line 2750
    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v1    # "objectAnimatorX":Landroid/animation/ObjectAnimator;
    .end local v2    # "objectAnimatorY":Landroid/animation/ObjectAnimator;
    :cond_1
    return-void

    .line 2735
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 2736
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private setElementItemAnimationUp(Landroid/widget/TextView;I)V
    .locals 6
    .param p1, "elementItem"    # Landroid/widget/TextView;
    .param p2, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 2688
    if-eqz p1, :cond_1

    .line 2689
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mCurrentShowAnim:[Landroid/animation/Animator;

    aget-object v1, v1, p2

    if-eqz v1, :cond_0

    .line 2690
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mCurrentShowAnim:[Landroid/animation/Animator;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    .line 2692
    :cond_0
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mElementItemHeight:I

    int-to-float v3, v3

    aput v3, v2, v5

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2693
    .local v0, "offsetAnim":Landroid/animation/ObjectAnimator;
    iget-wide v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mScrollAnimationDuration:J

    const-wide/16 v3, 0x64

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2694
    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 2695
    mul-int/lit8 v1, p2, 0x3c

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2696
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2698
    new-instance v1, Lcom/oppo/widget/OppoOptionMenuBar$9;

    invoke-direct {v1, p0, p2, p1}, Lcom/oppo/widget/OppoOptionMenuBar$9;-><init>(Lcom/oppo/widget/OppoOptionMenuBar;ILandroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2724
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 2725
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mCurrentShowAnim:[Landroid/animation/Animator;

    aput-object v0, v1, p2

    .line 2727
    .end local v0    # "offsetAnim":Landroid/animation/ObjectAnimator;
    :cond_1
    return-void
.end method

.method private setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V
    .locals 4
    .param p1, "itemView"    # Lcom/oppo/widget/OppoOptionMenuBarItem;
    .param p2, "item"    # Lcom/oppo/widget/OppoMenuItem;

    .prologue
    .line 1020
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    if-ne p1, v2, :cond_0

    .line 1026
    :cond_0
    invoke-interface {p2}, Lcom/oppo/widget/OppoMenuItem;->getItemId()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemId(I)V

    .line 1027
    invoke-interface {p2}, Lcom/oppo/widget/OppoMenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1029
    invoke-interface {p2}, Lcom/oppo/widget/OppoMenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Lcom/oppo/widget/OppoMenuItem;->showsTextAsAction()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1030
    :cond_1
    invoke-interface {p2}, Lcom/oppo/widget/OppoMenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitle(Ljava/lang/CharSequence;)V

    .line 1035
    :goto_0
    invoke-interface {p2}, Lcom/oppo/widget/OppoMenuItem;->isEnabled()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setEnabled(Z)V

    .line 1036
    invoke-interface {p2}, Lcom/oppo/widget/OppoMenuItem;->isVisible()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemVisible(Z)V

    .line 1038
    invoke-interface {p2}, Lcom/oppo/widget/OppoMenuItem;->getWeight()F

    move-result v0

    .line 1044
    .local v0, "layoutWeight":F
    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1046
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isCustomized:Z

    if-nez v2, :cond_3

    invoke-interface {p2}, Lcom/oppo/widget/OppoMenuItem;->getItemId()I

    move-result v2

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_3

    .line 1047
    iget v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationCount:I

    packed-switch v2, :pswitch_data_0

    .line 1064
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1071
    :goto_1
    invoke-virtual {p1, v1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1076
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpertionList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1078
    return-void

    .line 1032
    .end local v0    # "layoutWeight":F
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1049
    .restart local v0    # "layoutWeight":F
    .restart local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :pswitch_0
    const/high16 v2, 0x408c0000    # 4.375f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    .line 1054
    :pswitch_1
    const/high16 v2, 0x400c0000    # 2.1875f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    .line 1059
    :pswitch_2
    const v2, 0x3fbaaaa8

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    .line 1068
    :cond_3
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    .line 1047
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "item"    # Lcom/oppo/widget/OppoOptionMenuBarItem;
    .param p2, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1007
    if-eqz p1, :cond_0

    .line 1008
    if-eqz p2, :cond_1

    .line 1009
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1014
    :cond_0
    :goto_0
    return-void

    .line 1011
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setupDecorMask()V
    .locals 2

    .prologue
    .line 563
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isFlowMenu:Z

    if-eqz v0, :cond_1

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorView:Landroid/view/View;

    .line 568
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorView:Landroid/view/View;

    const v1, 0xc02046e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    .line 571
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    new-instance v1, Lcom/oppo/widget/OppoOptionMenuBar$3;

    invoke-direct {v1, p0}, Lcom/oppo/widget/OppoOptionMenuBar$3;-><init>(Lcom/oppo/widget/OppoOptionMenuBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method


# virtual methods
.method public addOnMenuVisibilityListener(Lcom/oppo/widget/OppoOptionMenuBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oppo/widget/OppoOptionMenuBar$OnMenuVisibilityListener;

    .prologue
    .line 2296
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2297
    return-void
.end method

.method public collapseMenu()V
    .locals 0

    .prologue
    .line 2608
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->startScrollDown()V

    .line 2609
    return-void
.end method

.method public copyFrom(Lcom/oppo/widget/OppoOptionMenuBar;Z)V
    .locals 6
    .param p1, "menuBar"    # Lcom/oppo/widget/OppoOptionMenuBar;
    .param p2, "refreshMore"    # Z

    .prologue
    .line 1528
    iput-boolean p2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isRefreshGallery:Z

    .line 1529
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->setEnabled(Lcom/oppo/widget/OppoOptionMenuBar;)V

    .line 1530
    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getMenuItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getMajorHopeCount()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/oppo/widget/OppoOptionMenuBar;->setMenuItems(Ljava/util/List;I)V

    .line 1531
    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getMajorOptionMenuBarHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoOptionMenuBar;->setMajorOperationMenuBarHeight(I)V

    .line 1532
    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getMajorMenuItemDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoOptionMenuBar;->setMajorMenuItemDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1533
    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoOptionMenuBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1534
    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getMajorOperationTextSize()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoOptionMenuBar;->setMajorOperationTextSize(F)V

    .line 1535
    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->isCustomized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1536
    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getItemDefaultBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getItemLeftBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getItemMiddleBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getItemRightBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/oppo/widget/OppoOptionMenuBar;->setMajorMenuItemBackground(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1540
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    iget-object v2, p1, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    iget-object v3, p1, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    iget-object v4, p1, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v4

    iget-object v5, p1, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1543
    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getMajorOperationTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 1544
    .local v0, "colors":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_1

    .line 1545
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->setMajorOperationTextColor(Landroid/content/res/ColorStateList;)V

    .line 1547
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isRefreshGallery:Z

    .line 1548
    return-void
.end method

.method public disableItemMoreAnimation()V
    .locals 2

    .prologue
    .line 2636
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    if-eqz v0, :cond_0

    .line 2637
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setmAnimationEnabled(Z)V

    .line 2639
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 2233
    iget-boolean v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isCurrentTopVisible:Z

    if-nez v1, :cond_1

    .line 2234
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 2243
    :cond_0
    :goto_0
    return v0

    .line 2236
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 2237
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->resolveKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2243
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public enableItemMoreAnimation()V
    .locals 2

    .prologue
    .line 2642
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    if-eqz v0, :cond_0

    .line 2643
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setmAnimationEnabled(Z)V

    .line 2645
    :cond_0
    return-void
.end method

.method public expandMenu()V
    .locals 0

    .prologue
    .line 2600
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->startScrollUp()V

    .line 2601
    return-void
.end method

.method public findMenuItem(I)Lcom/oppo/widget/OppoMenuItem;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 1091
    const/4 v2, 0x0

    .line 1093
    .local v2, "item":Lcom/oppo/widget/OppoMenuItem;
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1094
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoMenuItem;

    .line 1095
    .local v0, "e":Lcom/oppo/widget/OppoMenuItem;
    invoke-interface {v0}, Lcom/oppo/widget/OppoMenuItem;->getItemId()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 1096
    move-object v2, v0

    goto :goto_0

    .line 1101
    .end local v0    # "e":Lcom/oppo/widget/OppoMenuItem;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v2
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1552
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1561
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationBg:Landroid/graphics/drawable/Drawable;

    .line 1564
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getClickDuration()J
    .locals 2

    .prologue
    .line 2628
    iget-wide v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mClickDuration:J

    return-wide v0
.end method

.method public getItemDefaultBgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemLeftBgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1498
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemMiddleBgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1503
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMiddleBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemMoreIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1629
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMoreIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemRightBgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1508
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getMajorHopeCount()I
    .locals 1

    .prologue
    .line 1483
    iget v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorHopeCount:I

    return v0
.end method

.method public getMajorMenuItemDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1513
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getMajorOperationTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 1456
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpreationTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getMajorOperationTextSize()F
    .locals 1

    .prologue
    .line 1476
    iget v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorTextSize:F

    return v0
.end method

.method public getMajorOperationVisibility()I
    .locals 1

    .prologue
    .line 1608
    iget v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisiblity:I

    return v0
.end method

.method public getMajorOperationsGroup()Landroid/view/View;
    .locals 1

    .prologue
    .line 2583
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getMajorOperationsLayout()Landroid/view/View;
    .locals 1

    .prologue
    .line 2592
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getMajorOptionMenuBarHeight()I
    .locals 1

    .prologue
    .line 1370
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->isCustomized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1371
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    .line 1376
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationHeight:I

    goto :goto_0
.end method

.method public getMenuItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    return-object v0
.end method

.method public getMoreOperationsGroupExpanded()Z
    .locals 1

    .prologue
    .line 1488
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    return v0
.end method

.method public getMoreOptionMenuBarHeight()I
    .locals 1

    .prologue
    .line 1385
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    if-eqz v0, :cond_0

    .line 1392
    iget v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOptionMenuBarHeight:I

    .line 1396
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidateOptionMenuBar()V
    .locals 2

    .prologue
    .line 1230
    const-wide/16 v0, 0xa

    invoke-direct {p0, v0, v1}, Lcom/oppo/widget/OppoOptionMenuBar;->invalidateOptionMenuBar(J)V

    .line 1231
    return-void
.end method

.method public isCustomized()Z
    .locals 1

    .prologue
    .line 1518
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isCustomized:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1670
    invoke-super {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isMoreOperaionsEnabled()Z
    .locals 1

    .prologue
    .line 2565
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    return v0
.end method

.method public isMoreOperationGroupScrolling()Z
    .locals 1

    .prologue
    .line 2561
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    return v0
.end method

.method public isMoreOperationsGroupExpanded()Z
    .locals 1

    .prologue
    .line 2569
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v9, 0x0

    .line 1675
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getOffsetViews()Ljava/util/List;

    move-result-object v6

    .line 1676
    .local v6, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1680
    .local v0, "e":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1681
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v7, -0x1

    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    .line 1686
    .end local v0    # "e":Landroid/view/View;
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->hasTranslucentNavBar()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    if-eqz v7, :cond_2

    .line 1687
    iget-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 1688
    .local v3, "lpMajor":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    invoke-virtual {v7}, Landroid/widget/Gallery;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1689
    .local v5, "more":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 1690
    .local v4, "lpMore":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v7, 0x2

    iget v8, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v8, :cond_4

    .line 1691
    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1692
    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1701
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1702
    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1706
    .end local v3    # "lpMajor":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "lpMore":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "more":Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->requestLayout()V

    .line 1729
    iget-boolean v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    if-eqz v7, :cond_3

    .line 1730
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->resetPositionToDefault()V

    .line 1731
    invoke-direct {p0, v9}, Lcom/oppo/widget/OppoOptionMenuBar;->dispatchMenuVisibilityChanged(Z)V

    .line 1734
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1735
    return-void

    .line 1693
    .restart local v3    # "lpMajor":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v4    # "lpMore":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v5    # "more":Landroid/view/View;
    :cond_4
    const/4 v7, 0x3

    iget v8, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v8, :cond_5

    .line 1694
    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1695
    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 1696
    :cond_5
    const/4 v7, 0x1

    iget v8, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v8, :cond_1

    .line 1697
    iget v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mNavBarHeight:I

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1698
    iget v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mNavBarHeight:I

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 393
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 395
    iget-boolean v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isInflated:Z

    if-nez v2, :cond_2

    .line 396
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isInflated:Z

    .line 397
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->inflateMajorOperationView()V

    .line 402
    const v2, 0xc020468

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoOptionMenuBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoOptionMenuBarItem;

    iput-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 403
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    const v2, 0xc020469

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoOptionMenuBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoOptionMenuBarItem;

    iput-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 406
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    const v2, 0xc02046a

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoOptionMenuBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoOptionMenuBarItem;

    iput-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 409
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    const v2, 0xc02046b

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoOptionMenuBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoOptionMenuBarItem;

    iput-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 412
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    const v2, 0xc02046c

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoOptionMenuBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    .line 416
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoOptionMenuBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 417
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpreationTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoOptionMenuBar;->setMajorOperationTextColor(Landroid/content/res/ColorStateList;)V

    .line 419
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, 0xc02046d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoOptionMenuBarGallery;

    iput-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    .line 422
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    if-nez v2, :cond_0

    .line 423
    const-string v2, "OppoOptionMenuBar"

    const-string v3, "Can\'t find the More Operation View in DecorViw when init;if you want to use OppoOptionMenuBar,please define oppo theme styles in AndroidManifest.xml"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_0
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->hasTranslucentNavBar()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->isOrientationPortrait()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 429
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    invoke-virtual {v2}, Landroid/widget/Gallery;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 430
    .local v1, "more":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 431
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mNavBarHeight:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 432
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 436
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "more":Landroid/view/View;
    :cond_1
    new-instance v2, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryAdapter:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    .line 437
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryAdapter:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryItemClickListener:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$OnGalleryItemClickListener;

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->setOnGalleryItemClickListener(Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$OnGalleryItemClickListener;)V

    .line 462
    :cond_2
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 2408
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2410
    if-eqz p1, :cond_1

    .line 2411
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 2412
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->setupDecorMask()V

    .line 2442
    :cond_0
    :goto_0
    return-void

    .line 2436
    :cond_1
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMusic:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2437
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2438
    iput-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 22
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 2337
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getChildCount()I

    move-result v14

    .line 2339
    .local v14, "count":I
    const/16 v18, 0x0

    .line 2340
    .local v18, "maxHeight":I
    const/16 v19, 0x0

    .line 2341
    .local v19, "maxWidth":I
    const/4 v13, 0x0

    .line 2343
    .local v13, "childState":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 2345
    .local v15, "height":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v14, :cond_2

    .line 2346
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoOptionMenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2347
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_0

    .line 2349
    if-nez v16, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oppo/widget/OppoOptionMenuBar;->isFillLayoutSpace:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 2351
    const/high16 v20, 0x40000000    # 2.0f

    .line 2352
    .local v20, "mode":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationHeight:I

    sub-int v21, v15, v2

    .line 2353
    .local v21, "resizeHeight":I
    move/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 2355
    .local v6, "customHeightMeasureSpec":I
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/oppo/widget/OppoOptionMenuBar;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 2360
    .end local v6    # "customHeightMeasureSpec":I
    .end local v20    # "mode":I
    .end local v21    # "resizeHeight":I
    :goto_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/widget/FrameLayout$LayoutParams;

    .line 2361
    .local v17, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    move-object/from16 v0, v17

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    move-object/from16 v0, v17

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    move/from16 v0, v19

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 2363
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    move-object/from16 v0, v17

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    move-object/from16 v0, v17

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    move/from16 v0, v18

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 2365
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    invoke-static {v13, v2}, Lcom/oppo/widget/OppoOptionMenuBar;->combineMeasuredStates(II)I

    move-result v13

    .line 2345
    .end local v17    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 2357
    :cond_1
    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object v8, v3

    move/from16 v9, p1

    move/from16 v11, p2

    invoke-virtual/range {v7 .. v12}, Lcom/oppo/widget/OppoOptionMenuBar;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_1

    .line 2369
    .end local v3    # "child":Landroid/view/View;
    :cond_2
    move/from16 v0, v19

    move/from16 v1, p1

    invoke-static {v0, v1, v13}, Lcom/oppo/widget/OppoOptionMenuBar;->resolveSizeAndState(III)I

    move-result v2

    shl-int/lit8 v4, v13, 0x10

    move/from16 v0, v18

    move/from16 v1, p2

    invoke-static {v0, v1, v4}, Lcom/oppo/widget/OppoOptionMenuBar;->resolveSizeAndState(III)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/oppo/widget/OppoOptionMenuBar;->setMeasuredDimension(II)V

    .line 2374
    return-void
.end method

.method protected onOffset(II)V
    .locals 10
    .param p1, "offset"    # I
    .param p2, "offstedDistance"    # I

    .prologue
    const/4 v9, 0x0

    .line 2094
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getOffsetViews()Ljava/util/List;

    move-result-object v6

    .line 2096
    .local v6, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2097
    .local v1, "e":Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2102
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 2104
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v8, 0x50

    if-ne v7, v8, :cond_1

    .line 2105
    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v7, p1

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 2111
    :goto_1
    iget-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorView:Landroid/view/View;

    if-eqz v7, :cond_3

    .line 2119
    const/4 v5, 0x0

    .line 2120
    .local v5, "screen":Landroid/view/View;
    iget-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorView:Landroid/view/View;

    const v8, 0x1020002

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2121
    .local v0, "content":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2122
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .end local v5    # "screen":Landroid/view/View;
    check-cast v5, Landroid/view/View;

    .line 2124
    .restart local v5    # "screen":Landroid/view/View;
    :cond_0
    if-eqz v5, :cond_2

    .line 2125
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    .line 2107
    .end local v0    # "content":Landroid/view/View;
    .end local v5    # "screen":Landroid/view/View;
    :cond_1
    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, p1

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 2127
    .restart local v0    # "content":Landroid/view/View;
    .restart local v5    # "screen":Landroid/view/View;
    :cond_2
    iget-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    .line 2131
    .end local v0    # "content":Landroid/view/View;
    .end local v5    # "screen":Landroid/view/View;
    :cond_3
    const/4 v7, -0x1

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    .line 2138
    .end local v1    # "e":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_4
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->hasTranslucentNavBar()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->isOrientationPortrait()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2139
    iget-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 2140
    .restart local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-lez p1, :cond_9

    .line 2141
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getMoreOptionMenuBarHeight()I

    move-result v7

    sub-int v4, p2, v7

    .line 2142
    .local v4, "margin":I
    if-lez v4, :cond_7

    iget v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mNavBarHeight:I

    if-ge v4, v7, :cond_7

    .line 2143
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 2164
    .end local v4    # "margin":I
    :cond_5
    :goto_2
    iget-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2168
    .end local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_6
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->invalidate()V

    .line 2169
    return-void

    .line 2144
    .restart local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v4    # "margin":I
    :cond_7
    iget v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mNavBarHeight:I

    if-ne v4, v7, :cond_8

    .line 2145
    iget v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mNavBarHeight:I

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_2

    .line 2146
    :cond_8
    iget v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mNavBarHeight:I

    if-le v4, v7, :cond_5

    .line 2147
    iget v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mNavBarHeight:I

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_2

    .line 2149
    .end local v4    # "margin":I
    :cond_9
    if-gez p1, :cond_5

    .line 2150
    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int v4, v7, p1

    .line 2151
    .restart local v4    # "margin":I
    if-lez v4, :cond_a

    .line 2152
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_2

    .line 2153
    :cond_a
    if-nez v4, :cond_b

    .line 2154
    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_2

    .line 2155
    :cond_b
    if-gez v4, :cond_5

    .line 2156
    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_2
.end method

.method protected onOffsetToDefault(I)V
    .locals 6
    .param p1, "offset"    # I

    .prologue
    .line 2172
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getOffsetViews()Ljava/util/List;

    move-result-object v3

    .line 2174
    .local v3, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2175
    .local v0, "e":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2180
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 2182
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v5, 0x50

    if-ne v4, v5, :cond_0

    .line 2183
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v4, p1

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 2185
    :cond_0
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, p1

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 2194
    .end local v0    # "e":Landroid/view/View;
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->hasTranslucentNavBar()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->isOrientationPortrait()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2195
    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 2196
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mNavBarHeight:I

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 2197
    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2200
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->requestLayout()V

    .line 2201
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 2478
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->resetPositionToDefault()V

    .line 2479
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isStepIntoNewActivity:Z

    .line 2481
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2482
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 2489
    if-nez p1, :cond_1

    .line 2490
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isStepIntoNewActivity:Z

    if-nez v0, :cond_0

    .line 2491
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->resetPositionToDefault()V

    .line 2508
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 2509
    return-void

    .line 2501
    :cond_1
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isStepIntoNewActivity:Z

    if-eqz v0, :cond_0

    .line 2502
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->resetPositionToDefault()V

    .line 2503
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isStepIntoNewActivity:Z

    goto :goto_0
.end method

.method public register()V
    .locals 4

    .prologue
    .line 2445
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isCurrentTopVisible:Z

    .line 2452
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    if-eqz v0, :cond_0

    .line 2453
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->getmAnimationDrawable()Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/oppo/widget/OppoOptionMenuBarItem;->startItemMoreAnimation(Landroid/graphics/drawable/AnimationDrawable;J)V

    .line 2456
    :cond_0
    return-void
.end method

.method public removeOnMenuVisibilityListener(Lcom/oppo/widget/OppoOptionMenuBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oppo/widget/OppoOptionMenuBar$OnMenuVisibilityListener;

    .prologue
    .line 2300
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2301
    return-void
.end method

.method public resetTheme()V
    .locals 6

    .prologue
    .line 2756
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isCustomized:Z

    .line 2759
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0xc050458

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2760
    .local v1, "defMajorTextSize":I
    int-to-float v3, v1

    iput v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorTextSize:F

    .line 2763
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0xc05041d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2764
    .local v0, "defHeight":I
    iput v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationHeight:I

    .line 2766
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0xc050428

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2767
    .local v2, "defaultGroupPadding":I
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    .line 2768
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v3, v2, v4, v2, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2772
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0xc080478

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMoreIcon:Landroid/graphics/drawable/Drawable;

    .line 2779
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0xc080062

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 2780
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0xc080067

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 2781
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0xc080069

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMiddleBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 2782
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0xc080068

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 2784
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0xc0804cc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationBg:Landroid/graphics/drawable/Drawable;

    .line 2787
    return-void
.end method

.method public setAllMenuItemsEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1189
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoMenuItem;

    .line 1190
    .local v0, "e":Lcom/oppo/widget/OppoMenuItem;
    if-eqz v0, :cond_0

    .line 1191
    invoke-interface {v0, p1}, Lcom/oppo/widget/OppoMenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1194
    .end local v0    # "e":Lcom/oppo/widget/OppoMenuItem;
    :cond_1
    return-void
.end method

.method public setAllMenuItemsIcon(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1156
    .local p1, "icons":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/drawable/Drawable;>;"
    if-eqz p1, :cond_0

    .line 1157
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1159
    .local v1, "size":I
    if-lez v1, :cond_0

    .line 1160
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1161
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoMenuItem;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-interface {v2, v3}, Lcom/oppo/widget/OppoMenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1165
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_0
    return-void
.end method

.method public setAllMenuItemsTitle(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1125
    .local p1, "titles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-eqz p1, :cond_0

    .line 1126
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1128
    .local v1, "size":I
    if-lez v1, :cond_0

    .line 1129
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1130
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoMenuItem;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v2, v3}, Lcom/oppo/widget/OppoMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1134
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1252
    iget-object v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_1

    .line 1257
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 1258
    .local v5, "rect":Landroid/graphics/Rect;
    const/4 v0, 0x0

    .line 1259
    .local v0, "hasPadding":Z
    const/4 v2, 0x0

    .line 1260
    .local v2, "paddingLeft":I
    const/4 v4, 0x0

    .line 1261
    .local v4, "paddingTop":I
    const/4 v3, 0x0

    .line 1262
    .local v3, "paddingRight":I
    const/4 v1, 0x0

    .line 1264
    .local v1, "paddingBottom":I
    if-eqz p1, :cond_0

    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1265
    const/4 v0, 0x1

    .line 1266
    iget-object v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    .line 1267
    iget-object v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v4

    .line 1268
    iget-object v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    .line 1269
    iget-object v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    .line 1274
    :cond_0
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationBg:Landroid/graphics/drawable/Drawable;

    .line 1277
    iget-object v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v6, p1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1279
    if-eqz v0, :cond_1

    .line 1280
    iget-object v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2, v4, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1285
    .end local v0    # "hasPadding":Z
    .end local v1    # "paddingBottom":I
    .end local v2    # "paddingLeft":I
    .end local v3    # "paddingRight":I
    .end local v4    # "paddingTop":I
    .end local v5    # "rect":Landroid/graphics/Rect;
    :cond_1
    return-void
.end method

.method public setClickDuration(J)V
    .locals 2
    .param p1, "duration"    # J

    .prologue
    .line 2617
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 2618
    iput-wide p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mClickDuration:J

    .line 2620
    :cond_0
    return-void
.end method

.method public setEnabled(Lcom/oppo/widget/OppoOptionMenuBar;)V
    .locals 1
    .param p1, "menuBar"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 1523
    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->isEnabled()Z

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1524
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1650
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1652
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->setAllMenuItemsEnabled(Z)V

    .line 1662
    const-wide/16 v0, 0x5

    invoke-direct {p0, v0, v1}, Lcom/oppo/widget/OppoOptionMenuBar;->invalidateOptionMenuBar(J)V

    .line 1665
    return-void
.end method

.method public setEnabled(ZZ)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "invalidate"    # Z

    .prologue
    .line 1568
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1569
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->setAllMenuItemsEnabled(Z)V

    .line 1576
    if-eqz p2, :cond_0

    .line 1577
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->refreshViews()V

    .line 1579
    :cond_0
    return-void
.end method

.method public setFlowMenuFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 2574
    iput-boolean p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isFlowMenu:Z

    .line 2575
    return-void
.end method

.method public setItemMoreIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1617
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMoreIcon:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    .line 1618
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMoreIcon:Landroid/graphics/drawable/Drawable;

    .line 1619
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMoreIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1621
    :cond_0
    return-void
.end method

.method public setMajorMenuItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1294
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->setMajorMenuItemBackground(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1295
    return-void
.end method

.method public setMajorMenuItemBackground(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "bgDefault"    # Landroid/graphics/drawable/Drawable;
    .param p2, "bgLeft"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bgMiddle"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bgRight"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    .line 1299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isCustomized:Z

    .line 1301
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 1305
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1309
    :cond_0
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 1310
    iput-object p2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 1311
    iput-object p3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMiddleBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 1312
    iput-object p4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 1325
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->refreshViews()V

    .line 1327
    return-void
.end method

.method public setMajorMenuItemDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1638
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationDivider:Landroid/graphics/drawable/Drawable;

    .line 1639
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1640
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1642
    :cond_0
    return-void
.end method

.method public setMajorOperationCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->setMenuItems(Ljava/util/List;I)V

    .line 1336
    return-void
.end method

.method public setMajorOperationMenuBarHeight(I)V
    .locals 2
    .param p1, "height"    # I

    .prologue
    .line 1344
    if-lez p1, :cond_0

    .line 1345
    iput p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationHeight:I

    .line 1347
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1348
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1350
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->requestLayout()V

    .line 1353
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public setMajorOperationTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 1406
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->setMajorOperationTextColor(Landroid/content/res/ColorStateList;)V

    .line 1407
    return-void
.end method

.method public setMajorOperationTextColor(IIII)V
    .locals 4
    .param p1, "defaultColor"    # I
    .param p2, "leftColor"    # I
    .param p3, "middleColor"    # I
    .param p4, "rightColor"    # I

    .prologue
    .line 1431
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-static {p4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/oppo/widget/OppoOptionMenuBar;->setMajorOperationTextColor(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 1434
    return-void
.end method

.method public setMajorOperationTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 1417
    if-eqz p1, :cond_0

    .line 1418
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpreationTextColor:Landroid/content/res/ColorStateList;

    .line 1420
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    .line 1421
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    .line 1422
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    .line 1423
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    .line 1425
    :cond_0
    return-void
.end method

.method public setMajorOperationTextColor(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "defaultColor"    # Landroid/content/res/ColorStateList;
    .param p2, "leftColor"    # Landroid/content/res/ColorStateList;
    .param p3, "middleColor"    # Landroid/content/res/ColorStateList;
    .param p4, "rightColor"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 1438
    if-eqz p1, :cond_0

    .line 1439
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpreationTextColor:Landroid/content/res/ColorStateList;

    .line 1442
    :cond_0
    if-eqz p2, :cond_1

    .line 1443
    iput-object p2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mLeftItemTextColor:Landroid/content/res/ColorStateList;

    .line 1446
    :cond_1
    if-eqz p3, :cond_2

    .line 1447
    iput-object p3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMiddleItemTextColor:Landroid/content/res/ColorStateList;

    .line 1450
    :cond_2
    if-eqz p4, :cond_3

    .line 1451
    iput-object p4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mRightItemTextColor:Landroid/content/res/ColorStateList;

    .line 1453
    :cond_3
    return-void
.end method

.method public setMajorOperationTextSize(F)V
    .locals 0
    .param p1, "size"    # F

    .prologue
    .line 1466
    iput p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorTextSize:F

    .line 1467
    return-void
.end method

.method public setMajorOperationVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 1588
    iput p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisiblity:I

    .line 1590
    iget v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisiblity:I

    if-eqz v0, :cond_0

    .line 1591
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    if-eqz v0, :cond_0

    .line 1593
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->startScrollDown()V

    .line 1598
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisiblity:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1599
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->requestLayout()V

    .line 1600
    return-void
.end method

.method public setMenuItemEnabled(IZ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 1174
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->findMenuItem(I)Lcom/oppo/widget/OppoMenuItem;

    move-result-object v0

    .line 1176
    .local v0, "item":Lcom/oppo/widget/OppoMenuItem;
    if-eqz v0, :cond_0

    .line 1177
    invoke-interface {v0, p2}, Lcom/oppo/widget/OppoMenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1179
    :cond_0
    return-void
.end method

.method public setMenuItemIcon(ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1143
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->findMenuItem(I)Lcom/oppo/widget/OppoMenuItem;

    move-result-object v0

    .line 1145
    .local v0, "item":Lcom/oppo/widget/OppoMenuItem;
    if-eqz v0, :cond_0

    .line 1146
    invoke-interface {v0, p2}, Lcom/oppo/widget/OppoMenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1148
    :cond_0
    return-void
.end method

.method public setMenuItemTitle(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 1112
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->findMenuItem(I)Lcom/oppo/widget/OppoMenuItem;

    move-result-object v0

    .line 1114
    .local v0, "item":Lcom/oppo/widget/OppoMenuItem;
    if-eqz v0, :cond_0

    .line 1115
    invoke-interface {v0, p2}, Lcom/oppo/widget/OppoMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1117
    :cond_0
    return-void
.end method

.method public setMenuItemVisible(IZ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 1203
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->findMenuItem(I)Lcom/oppo/widget/OppoMenuItem;

    move-result-object v0

    .line 1205
    .local v0, "item":Lcom/oppo/widget/OppoMenuItem;
    if-eqz v0, :cond_0

    .line 1206
    invoke-interface {v0, p2}, Lcom/oppo/widget/OppoMenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1208
    :cond_0
    return-void
.end method

.method public setMenuItems(I)V
    .locals 1
    .param p1, "menuRes"    # I

    .prologue
    .line 653
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->setMenuItems(II)V

    .line 654
    return-void
.end method

.method public setMenuItems(II)V
    .locals 2
    .param p1, "menuRes"    # I
    .param p2, "majorOperationCount"    # I

    .prologue
    .line 657
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuInflater:Lcom/oppo/widget/OppoMenuInflater;

    invoke-virtual {v1, p1}, Lcom/oppo/widget/OppoMenuInflater;->inflate(I)V

    .line 658
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuInflater:Lcom/oppo/widget/OppoMenuInflater;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoMenuInflater;->getMenuItems()Ljava/util/List;

    move-result-object v0

    .line 660
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/widget/OppoMenuItem;>;"
    invoke-virtual {p0, v0, p2}, Lcom/oppo/widget/OppoOptionMenuBar;->setMenuItems(Ljava/util/List;I)V

    .line 661
    return-void
.end method

.method public setMenuItems(IIZ)V
    .locals 2
    .param p1, "menuRes"    # I
    .param p2, "majorOperationCount"    # I
    .param p3, "invalidate"    # Z

    .prologue
    .line 693
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuInflater:Lcom/oppo/widget/OppoMenuInflater;

    invoke-virtual {v1, p1}, Lcom/oppo/widget/OppoMenuInflater;->inflate(I)V

    .line 694
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuInflater:Lcom/oppo/widget/OppoMenuInflater;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoMenuInflater;->getMenuItems()Ljava/util/List;

    move-result-object v0

    .line 696
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/widget/OppoMenuItem;>;"
    invoke-virtual {p0, v0, p2, p3}, Lcom/oppo/widget/OppoOptionMenuBar;->setMenuItems(Ljava/util/List;IZ)V

    .line 697
    return-void
.end method

.method public setMenuItems(IZ)V
    .locals 1
    .param p1, "menuRes"    # I
    .param p2, "invalidate"    # Z

    .prologue
    .line 689
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0, p2}, Lcom/oppo/widget/OppoOptionMenuBar;->setMenuItems(IIZ)V

    .line 690
    return-void
.end method

.method public setMenuItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoMenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 664
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/widget/OppoMenuItem;>;"
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->setMenuItems(Ljava/util/List;I)V

    .line 665
    return-void
.end method

.method public setMenuItems(Ljava/util/List;I)V
    .locals 1
    .param p2, "majorOperationCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoMenuItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/widget/OppoMenuItem;>;"
    const/4 v0, 0x4

    .line 671
    if-ltz p2, :cond_1

    if-gt p2, v0, :cond_1

    .line 672
    iput p2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorHopeCount:I

    .line 677
    :goto_0
    if-eqz p1, :cond_0

    .line 678
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    .line 683
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->refreshViews()V

    .line 686
    :cond_0
    return-void

    .line 674
    :cond_1
    iput v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorHopeCount:I

    goto :goto_0
.end method

.method public setMenuItems(Ljava/util/List;IZ)V
    .locals 1
    .param p2, "majorOperationCount"    # I
    .param p3, "invalidate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoMenuItem;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/widget/OppoMenuItem;>;"
    const/4 v0, 0x4

    .line 707
    if-ltz p2, :cond_1

    if-gt p2, v0, :cond_1

    .line 708
    iput p2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorHopeCount:I

    .line 713
    :goto_0
    if-eqz p1, :cond_0

    .line 714
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    .line 720
    if-eqz p3, :cond_0

    .line 721
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->refreshViews()V

    .line 724
    :cond_0
    return-void

    .line 710
    :cond_1
    iput v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorHopeCount:I

    goto :goto_0
.end method

.method public setMenuItems(Ljava/util/List;Z)V
    .locals 1
    .param p2, "invalidate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoMenuItem;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 700
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/widget/OppoMenuItem;>;"
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0, p2}, Lcom/oppo/widget/OppoOptionMenuBar;->setMenuItems(Ljava/util/List;IZ)V

    .line 701
    return-void
.end method

.method public setMenuItemsVisible(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 1216
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoMenuItem;

    .line 1217
    .local v0, "e":Lcom/oppo/widget/OppoMenuItem;
    if-eqz v0, :cond_0

    .line 1218
    invoke-interface {v0, p1}, Lcom/oppo/widget/OppoMenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1221
    .end local v0    # "e":Lcom/oppo/widget/OppoMenuItem;
    :cond_1
    return-void
.end method

.method public setOnOptionsItemSelectedListener(Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;

    .prologue
    .line 1747
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mOptionsItemSelectedListener:Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;

    .line 1750
    return-void
.end method

.method public setmAnimationDrawable(Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 1
    .param p1, "animationDrawable"    # Landroid/graphics/drawable/AnimationDrawable;

    .prologue
    .line 2648
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    if-eqz v0, :cond_0

    .line 2658
    :cond_0
    return-void
.end method

.method public startElementItemAnimationDown()V
    .locals 3

    .prologue
    .line 2682
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryAdapter:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->setAnimationUpAgain(Z)V

    .line 2683
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2684
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemIdArray:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/Gallery;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->setElementItemAnimationDown(Landroid/widget/TextView;I)V

    .line 2683
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2686
    :cond_0
    return-void
.end method

.method public startElementItemAnimationUp()V
    .locals 3

    .prologue
    .line 2675
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryAdapter:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->setAnimationUpAgain(Z)V

    .line 2676
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2677
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemIdArray:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/Gallery;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->setElementItemAnimationUp(Landroid/widget/TextView;I)V

    .line 2676
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2679
    :cond_0
    return-void
.end method

.method protected startScrollDown()V
    .locals 1

    .prologue
    .line 1822
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->scrollView(Z)V

    .line 1823
    return-void
.end method

.method protected startScrollUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1780
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->requestFocus()Z

    .line 1783
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1784
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->requestFocusFromTouch()Z

    .line 1790
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 1791
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->setupDecorMask()V

    .line 1794
    :cond_1
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isViewPager:Z

    if-eqz v0, :cond_2

    .line 1795
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->refreshGallery()V

    .line 1798
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 1799
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1802
    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->dispatchMenuVisibilityChanged(Z)V

    .line 1804
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    if-eqz v0, :cond_4

    .line 1805
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setVisibility(I)V

    .line 1813
    :cond_4
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    if-eqz v0, :cond_5

    .line 1814
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setSelection(I)V

    .line 1818
    :cond_5
    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoOptionMenuBar;->scrollView(Z)V

    .line 1819
    return-void
.end method

.method public unRegister()V
    .locals 4

    .prologue
    .line 2459
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isCurrentTopVisible:Z

    .line 2466
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    if-eqz v0, :cond_0

    .line 2467
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->getmAnimationDrawable()Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/oppo/widget/OppoOptionMenuBarItem;->stopItemMoreAnimation(Landroid/graphics/drawable/AnimationDrawable;J)V

    .line 2470
    :cond_0
    return-void
.end method
