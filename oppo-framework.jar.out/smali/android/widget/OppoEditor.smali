.class public Landroid/widget/OppoEditor;
.super Landroid/widget/Editor;
.source "OppoEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/OppoEditor$TextListener;,
        Landroid/widget/OppoEditor$PastePanelOnClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OppoEditor"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCursrOffset:I

.field private mFlag:I

.field private mHasOnTouchListener:Z

.field private mIsInTextSelectionMode:Z

.field private mIsInTextTranslationMode:Z

.field private mLongPressed:Z

.field private mMagnifierController:Landroid/widget/OppoMagnifierController;

.field mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

.field mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

.field private mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleRight:Landroid/graphics/drawable/Drawable;

.field private mTextListener:Landroid/widget/OppoEditor$TextListener;

.field private mTextView:Landroid/widget/TextView;

.field private mTranslateController:Landroid/widget/OppoTranslateController;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0, p1}, Landroid/widget/Editor;-><init>(Landroid/widget/TextView;)V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/OppoEditor;->mTranslateController:Landroid/widget/OppoTranslateController;

    .line 76
    iput-boolean v1, p0, Landroid/widget/OppoEditor;->mIsInTextTranslationMode:Z

    .line 80
    iput-boolean v1, p0, Landroid/widget/OppoEditor;->mIsInTextSelectionMode:Z

    .line 88
    iput v1, p0, Landroid/widget/OppoEditor;->mFlag:I

    .line 89
    iput-boolean v1, p0, Landroid/widget/OppoEditor;->mHasOnTouchListener:Z

    .line 90
    iput-boolean v1, p0, Landroid/widget/OppoEditor;->mLongPressed:Z

    .line 97
    iput-object p1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    .line 98
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    .line 99
    iget-object v0, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc050431

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroid/widget/OppoEditor;->mCursrOffset:I

    .line 101
    return-void
.end method

.method static synthetic access$000(Landroid/widget/OppoEditor;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/OppoEditor;

    .prologue
    .line 67
    iget-object v0, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/OppoEditor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/OppoEditor;

    .prologue
    .line 67
    iget-object v0, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Landroid/widget/OppoEditor;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/OppoEditor;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Landroid/widget/OppoEditor;->mIsInTextTranslationMode:Z

    return p1
.end method

.method private canSelectText()Z
    .locals 1

    .prologue
    .line 531
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkInputMethodScreenMode()V
    .locals 4

    .prologue
    .line 998
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->extractedTextModeWillBeStartedWrap()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 999
    iget-object v2, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1000
    .local v0, "config":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 1001
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 1002
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    .line 1003
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->setFullscreenMode(Z)V

    .line 1007
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method private getPrimaryHorizontal(Landroid/text/Layout;Landroid/text/Layout;I)F
    .locals 1
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "hintLayout"    # Landroid/text/Layout;
    .param p3, "offset"    # I

    .prologue
    .line 369
    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    invoke-virtual {p2, p3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    .line 373
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    goto :goto_0
.end method

.method private isPasswordTransformation()Z
    .locals 1

    .prologue
    .line 1029
    iget-object v0, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method getButtonShowHides(ZI)Z
    .locals 5
    .param p1, "isTextEditable"    # Z
    .param p2, "id"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 536
    :try_start_0
    iget-object v4, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v4

    instance-of v1, v4, Landroid/text/method/PasswordTransformationMethod;

    .line 537
    .local v1, "passwordTransformed":Z
    sparse-switch p2, :sswitch_data_0

    .line 586
    .end local v1    # "passwordTransformed":Z
    :cond_0
    :goto_0
    return v3

    .line 540
    .restart local v1    # "passwordTransformed":Z
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isSelectionToolbarEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 543
    invoke-direct {p0}, Landroid/widget/OppoEditor;->canSelectText()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_1

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    .line 546
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isCutAndPasteEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 549
    if-eqz p1, :cond_2

    iget-object v4, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->canPaste()Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_2
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_2

    .line 560
    :sswitch_2
    iget-object v2, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->canCopy()Z

    move-result v3

    goto :goto_0

    .line 563
    :sswitch_3
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isCutAndPasteEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 566
    if-eqz p1, :cond_3

    iget-object v4, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->canCut()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_3
    move v3, v2

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_3

    .line 568
    :sswitch_4
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isImSwitcherEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v2

    .line 570
    goto :goto_0

    .line 575
    :sswitch_5
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isSearchEnabled()Z

    move-result v3

    goto :goto_0

    .line 580
    :sswitch_6
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isTranslationEnabled()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 584
    .end local v1    # "passwordTransformed":Z
    :catch_0
    move-exception v0

    .line 585
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "OppoEditor"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 537
    :sswitch_data_0
    .sparse-switch
        0xc02044d -> :sswitch_2
        0xc02044e -> :sswitch_3
        0xc02044f -> :sswitch_1
        0xc020450 -> :sswitch_0
        0xc020451 -> :sswitch_0
        0xc020452 -> :sswitch_4
        0xc0204a7 -> :sswitch_5
        0xc0204b2 -> :sswitch_6
    .end sparse-switch
.end method

.method getFloatPanelShowHides([I)Ljava/util/ArrayList;
    .locals 7
    .param p1, "buttons"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 496
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 497
    .local v5, "showHides":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    iget-object v6, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 498
    .local v3, "isTextEditable":Ljava/lang/Boolean;
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget v1, v0, v2

    .line 499
    .local v1, "button":I
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {p0, v6, v1}, Landroid/widget/OppoEditor;->getButtonShowHides(ZI)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 501
    .end local v1    # "button":I
    :cond_0
    return-object v5
.end method

.method getLastTapPositionWrap()I
    .locals 2

    .prologue
    .line 328
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v1, :cond_1

    .line 329
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v1}, Landroid/widget/OppoCursorController;->getMinTouchOffset()I

    move-result v0

    .line 330
    .local v0, "lastTapPosition":I
    if-ltz v0, :cond_1

    .line 332
    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 333
    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 338
    .end local v0    # "lastTapPosition":I
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method getLastTouchOffsetsWrap()J
    .locals 5

    .prologue
    .line 306
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoSelectionController()Landroid/widget/OppoCursorController;

    move-result-object v2

    .line 307
    .local v2, "selectionController":Landroid/widget/OppoCursorController;
    invoke-virtual {v2}, Landroid/widget/OppoCursorController;->getMinTouchOffset()I

    move-result v1

    .line 308
    .local v1, "minOffset":I
    invoke-virtual {v2}, Landroid/widget/OppoCursorController;->getMaxTouchOffset()I

    move-result v0

    .line 309
    .local v0, "maxOffset":I
    invoke-static {v1, v0}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v3

    return-wide v3
.end method

.method public getLongPressed()Z
    .locals 1

    .prologue
    .line 460
    iget-boolean v0, p0, Landroid/widget/OppoEditor;->mLongPressed:Z

    return v0
.end method

.method getMagnifierController()Landroid/widget/OppoMagnifierController;
    .locals 3

    .prologue
    .line 816
    const/4 v0, 0x0

    .line 817
    .local v0, "controller":Landroid/widget/OppoMagnifierController;
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->hasMagnifierController()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 818
    iget-object v1, p0, Landroid/widget/OppoEditor;->mMagnifierController:Landroid/widget/OppoMagnifierController;

    if-nez v1, :cond_0

    .line 819
    new-instance v1, Landroid/widget/OppoMagnifierController;

    iget-object v2, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Landroid/widget/OppoMagnifierController;-><init>(Landroid/content/Context;Landroid/widget/OppoEditor;)V

    iput-object v1, p0, Landroid/widget/OppoEditor;->mMagnifierController:Landroid/widget/OppoMagnifierController;

    .line 821
    :cond_0
    iget-object v0, p0, Landroid/widget/OppoEditor;->mMagnifierController:Landroid/widget/OppoMagnifierController;

    .line 823
    :cond_1
    return-object v0
.end method

.method getOppoInsertionController()Landroid/widget/OppoCursorController;
    .locals 3

    .prologue
    .line 422
    iget-boolean v1, p0, Landroid/widget/OppoEditor;->mInsertionControllerEnabled:Z

    if-nez v1, :cond_0

    .line 423
    const/4 v1, 0x0

    .line 433
    :goto_0
    return-object v1

    .line 426
    :cond_0
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    if-nez v1, :cond_1

    .line 427
    iget-object v1, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/OppoCursorController;->create(Landroid/widget/OppoEditor;Landroid/content/Context;I)Landroid/widget/OppoCursorController;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    .line 429
    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 430
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 433
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    goto :goto_0
.end method

.method getOppoSelectionController()Landroid/widget/OppoCursorController;
    .locals 3

    .prologue
    .line 437
    iget-boolean v1, p0, Landroid/widget/OppoEditor;->mSelectionControllerEnabled:Z

    if-nez v1, :cond_0

    .line 438
    const/4 v1, 0x0

    .line 448
    :goto_0
    return-object v1

    .line 441
    :cond_0
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    if-nez v1, :cond_1

    .line 442
    iget-object v1, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Landroid/widget/OppoCursorController;->create(Landroid/widget/OppoEditor;Landroid/content/Context;I)Landroid/widget/OppoCursorController;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    .line 444
    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 445
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 448
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    goto :goto_0
.end method

.method getSelectHandleCenterRes()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 472
    iget-object v0, p0, Landroid/widget/OppoEditor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 473
    iget-object v0, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    iget v1, v1, Landroid/widget/TextView;->mTextSelectHandleRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/OppoEditor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    .line 476
    :cond_0
    iget-object v0, p0, Landroid/widget/OppoEditor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getSelectHandleLeftRes()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 480
    iget-object v0, p0, Landroid/widget/OppoEditor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 481
    iget-object v0, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    iget v1, v1, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/OppoEditor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    .line 484
    :cond_0
    iget-object v0, p0, Landroid/widget/OppoEditor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getSelectHandleRightRes()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Landroid/widget/OppoEditor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 489
    iget-object v0, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    iget v1, v1, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/OppoEditor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    .line 492
    :cond_0
    iget-object v0, p0, Landroid/widget/OppoEditor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getSelectHandleWindowStyle()I
    .locals 1

    .prologue
    .line 464
    const v0, 0x10102c8

    return v0
.end method

.method handleFloatPanelClick(Landroid/view/View;Landroid/widget/OppoCursorController;)V
    .locals 21
    .param p1, "v"    # Landroid/view/View;
    .param p2, "cc"    # Landroid/widget/OppoCursorController;

    .prologue
    .line 654
    const/4 v12, 0x0

    .line 655
    .local v12, "min":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->length()I

    move-result v11

    .line 657
    .local v11, "max":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->isFocused()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v16

    .line 659
    .local v16, "selStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v15

    .line 661
    .local v15, "selEnd":I
    const/16 v17, 0x0

    move/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 662
    const/16 v17, 0x0

    move/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 665
    .end local v15    # "selEnd":I
    .end local v16    # "selStart":I
    :cond_0
    const/4 v5, 0x0

    .line 666
    .local v5, "data":Landroid/content/ClipData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "clipboard"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ClipboardManager;

    .line 669
    .local v4, "clip":Landroid/content/ClipboardManager;
    :try_start_0
    invoke-virtual {v4}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 674
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    .line 808
    .end local p2    # "cc":Landroid/widget/OppoCursorController;
    :cond_1
    :goto_1
    return-void

    .line 670
    .restart local p2    # "cc":Landroid/widget/OppoCursorController;
    :catch_0
    move-exception v7

    .line 671
    .local v7, "e":Ljava/lang/SecurityException;
    const-string v17, "OppoEditor"

    invoke-virtual {v7}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 676
    .end local v7    # "e":Ljava/lang/SecurityException;
    :sswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/OppoEditor;->mSelectionControllerEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 677
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoEditor;->startTextSelectionMode()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 678
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoEditor;->getOppoSelectionController()Landroid/widget/OppoCursorController;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/OppoCursorController;->show()V

    goto :goto_1

    .line 685
    :sswitch_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/OppoEditor;->mSelectionControllerEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    check-cast v17, Landroid/text/Spannable;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->length()I

    move-result v19

    invoke-static/range {v17 .. v19}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 687
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoEditor;->startTextSelectionMode()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 688
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoEditor;->getOppoSelectionController()Landroid/widget/OppoCursorController;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/OppoCursorController;->show()V

    goto :goto_1

    .line 694
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->isHandleEditAction(I)Z

    move-result v17

    if-nez v17, :cond_2

    if-nez v5, :cond_3

    .line 695
    :cond_2
    const-string v17, "OppoEditor"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "***data=="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "***"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 699
    :cond_3
    const/4 v13, 0x0

    .line 700
    .local v13, "paste":Ljava/lang/CharSequence;
    const-string v17, "OppoEditor"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "-----data.getItemCount()="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Landroid/content/ClipData;->getItemCount()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    invoke-virtual {v5}, Landroid/content/ClipData;->getItemCount()I

    move-result v17

    if-lez v17, :cond_4

    .line 702
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 704
    :cond_4
    const-string v17, "OppoEditor"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "=====paste===="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "****"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    if-eqz v13, :cond_1

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v17

    if-lez v17, :cond_1

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    check-cast v17, Landroid/text/Spannable;

    move-object/from16 v0, v17

    invoke-static {v0, v11}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 708
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v11, v13}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    .line 709
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoEditor;->stopTextSelectionMode()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 710
    :catch_1
    move-exception v7

    .line 711
    .local v7, "e":Ljava/lang/Exception;
    const-string v17, "OppoEditor"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 724
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v13    # "paste":Ljava/lang/CharSequence;
    :sswitch_3
    check-cast p2, Landroid/widget/OppoCursorController$SelectionModifierCursorController;

    .end local p2    # "cc":Landroid/widget/OppoCursorController;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v11}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v5, v1}, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->addClipData(Landroid/content/ClipboardManager;Landroid/content/ClipData;Ljava/lang/CharSequence;)V

    .line 726
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoEditor;->stopTextSelectionMode()V

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->isHandleEditAction(I)Z

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0xc040534

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 734
    .restart local p2    # "cc":Landroid/widget/OppoCursorController;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->isHandleEditAction(I)Z

    .line 735
    check-cast p2, Landroid/widget/OppoCursorController$SelectionModifierCursorController;

    .end local p2    # "cc":Landroid/widget/OppoCursorController;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v11}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v5, v1}, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->addClipData(Landroid/content/ClipboardManager;Landroid/content/ClipData;Ljava/lang/CharSequence;)V

    .line 737
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoEditor;->stopTextSelectionMode()V

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v11}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 739
    const/4 v6, 0x0

    .line 740
    .local v6, "delayedTime":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoEditor;->isAllTextSelected()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 741
    const/16 v6, 0xc8

    .line 743
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    new-instance v18, Landroid/widget/OppoEditor$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/OppoEditor$2;-><init>(Landroid/widget/OppoEditor;)V

    int-to-long v0, v6

    move-wide/from16 v19, v0

    invoke-virtual/range {v17 .. v20}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 754
    .end local v6    # "delayedTime":I
    .restart local p2    # "cc":Landroid/widget/OppoCursorController;
    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoEditor;->stopTextSelectionMode()V

    .line 755
    new-instance v9, Landroid/content/Intent;

    const-string v17, "android.intent.action.WEB_SEARCH"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 756
    .local v9, "intent":Landroid/content/Intent;
    const/4 v10, 0x0

    .line 757
    .local v10, "intentTemp":Landroid/content/Intent;
    const-string v17, "new_search"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v11}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 759
    .local v14, "query":Ljava/lang/String;
    const-string v17, "query"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 760
    const/high16 v17, 0x10000000

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 763
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 764
    :catch_2
    move-exception v7

    .line 765
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v17, "OppoEditor"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    new-instance v10, Landroid/content/Intent;

    .end local v10    # "intentTemp":Landroid/content/Intent;
    const-string v17, "android.intent.action.WEB_SEARCH"

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 767
    .restart local v10    # "intentTemp":Landroid/content/Intent;
    const-string v17, "new_search"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 768
    const-string v17, "query"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 769
    const/high16 v17, 0x10000000

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 777
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "intentTemp":Landroid/content/Intent;
    .end local v14    # "query":Ljava/lang/String;
    :sswitch_6
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/OppoEditor;->mIsInTextTranslationMode:Z

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/OppoCursorController;->hide()V

    .line 781
    :cond_6
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/OppoEditor;->mIsInTextSelectionMode:Z

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTranslateController:Landroid/widget/OppoTranslateController;

    move-object/from16 v17, v0

    if-nez v17, :cond_7

    .line 783
    new-instance v17, Landroid/widget/OppoTranslateController;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    new-instance v19, Landroid/widget/OppoEditor$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/OppoEditor$3;-><init>(Landroid/widget/OppoEditor;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/OppoTranslateController;-><init>(Landroid/widget/Editor;Landroid/widget/TextView;Landroid/widget/PopupWindow$OnDismissListener;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/OppoEditor;->mTranslateController:Landroid/widget/OppoTranslateController;

    .line 797
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTranslateController:Landroid/widget/OppoTranslateController;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/OppoTranslateController;->show()V

    goto/16 :goto_1

    .line 802
    :sswitch_7
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v8

    .line 803
    .local v8, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v8, :cond_1

    .line 804
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto/16 :goto_1

    .line 674
    :sswitch_data_0
    .sparse-switch
        0xc02044d -> :sswitch_3
        0xc02044e -> :sswitch_4
        0xc02044f -> :sswitch_2
        0xc020450 -> :sswitch_0
        0xc020451 -> :sswitch_1
        0xc020452 -> :sswitch_7
        0xc0204a7 -> :sswitch_5
        0xc0204b2 -> :sswitch_6
    .end sparse-switch
.end method

.method hasMagnifierController()Z
    .locals 1

    .prologue
    .line 811
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isMagnifierEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/OppoEditor;->mInsertionControllerEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/OppoEditor;->mSelectionControllerEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOnTouchListener()Z
    .locals 1

    .prologue
    .line 966
    iget-boolean v0, p0, Landroid/widget/OppoEditor;->mHasOnTouchListener:Z

    return v0
.end method

.method hasPasswordTransformationMethodWrap()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isAllTextSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hideInsertionPointCursorControllerWrap()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->hide()V

    .line 176
    :cond_0
    return-void
.end method

.method hideSelectionModifierCursorController()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->hide()V

    .line 169
    :cond_0
    return-void
.end method

.method public isAllTextSelected()Z
    .locals 2

    .prologue
    .line 946
    iget v0, p0, Landroid/widget/OppoEditor;->mFlag:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 948
    const/4 v0, 0x1

    .line 950
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCutAndPasteEnabled()Z
    .locals 2

    .prologue
    .line 954
    iget v0, p0, Landroid/widget/OppoEditor;->mFlag:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    .line 956
    const/4 v0, 0x0

    .line 958
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isImSwitcherEnabled()Z
    .locals 2

    .prologue
    .line 938
    iget v0, p0, Landroid/widget/OppoEditor;->mFlag:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 940
    const/4 v0, 0x0

    .line 942
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isInsertToolbarEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 919
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isToolbarEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 920
    iget v1, p0, Landroid/widget/OppoEditor;->mFlag:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 926
    :cond_0
    :goto_0
    return v0

    .line 924
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isMagnifierEnabled()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 892
    iget v0, p0, Landroid/widget/OppoEditor;->mFlag:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 896
    :cond_0
    return v2
.end method

.method public isPasswordType()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1011
    iget v6, p0, Landroid/widget/OppoEditor;->mInputType:I

    and-int/lit16 v2, v6, 0xfff

    .line 1013
    .local v2, "variation":I
    const/16 v6, 0x81

    if-ne v2, v6, :cond_2

    move v1, v5

    .line 1015
    .local v1, "passwordInputType":Z
    :goto_0
    const/16 v6, 0xe1

    if-ne v2, v6, :cond_3

    move v3, v5

    .line 1017
    .local v3, "webPasswordInputType":Z
    :goto_1
    const/16 v6, 0x12

    if-ne v2, v6, :cond_4

    move v0, v5

    .line 1019
    .local v0, "numberPasswordInputType":Z
    :goto_2
    if-nez v1, :cond_0

    if-nez v3, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v4, v5

    .line 1022
    :cond_1
    return v4

    .end local v0    # "numberPasswordInputType":Z
    .end local v1    # "passwordInputType":Z
    .end local v3    # "webPasswordInputType":Z
    :cond_2
    move v1, v4

    .line 1013
    goto :goto_0

    .restart local v1    # "passwordInputType":Z
    :cond_3
    move v3, v4

    .line 1015
    goto :goto_1

    .restart local v3    # "webPasswordInputType":Z
    :cond_4
    move v0, v4

    .line 1017
    goto :goto_2
.end method

.method public isSearchEnabled()Z
    .locals 2

    .prologue
    .line 930
    iget v0, p0, Landroid/widget/OppoEditor;->mFlag:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    .line 932
    const/4 v0, 0x0

    .line 934
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSelectionToolbarEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 908
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isToolbarEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 909
    iget v1, p0, Landroid/widget/OppoEditor;->mFlag:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 915
    :cond_0
    :goto_0
    return v0

    .line 913
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isToolbarEnabled()Z
    .locals 2

    .prologue
    .line 900
    iget v0, p0, Landroid/widget/OppoEditor;->mFlag:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 902
    const/4 v0, 0x0

    .line 904
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isTranslationEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 972
    iget v2, p0, Landroid/widget/OppoEditor;->mFlag:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_1

    .line 993
    :cond_0
    :goto_0
    return v1

    .line 976
    :cond_1
    iget-object v2, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 977
    .local v0, "config":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 989
    invoke-direct {p0}, Landroid/widget/OppoEditor;->isPasswordTransformation()Z

    move-result v2

    if-nez v2, :cond_0

    .line 993
    const/4 v1, 0x1

    goto :goto_0
.end method

.method needInsertPanel()Z
    .locals 1

    .prologue
    .line 509
    iget-boolean v0, p0, Landroid/widget/OppoEditor;->mIsInTextSelectionMode:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isInsertToolbarEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onAttachedToWindow()V
    .locals 3

    .prologue
    .line 105
    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 106
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoInsertionController()Landroid/widget/OppoCursorController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoInsertionController()Landroid/widget/OppoCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/OppoCursorController;->resetSecondTapFlag()V

    .line 109
    :cond_0
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v1, :cond_1

    .line 110
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 112
    :cond_1
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v1, :cond_2

    .line 113
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v1}, Landroid/widget/OppoCursorController;->resetTouchOffsets()V

    .line 114
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 116
    :cond_2
    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextListener:Landroid/widget/OppoEditor$TextListener;

    if-eqz v1, :cond_3

    .line 117
    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/OppoEditor;->mTextListener:Landroid/widget/OppoEditor$TextListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 118
    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/OppoEditor;->mTextListener:Landroid/widget/OppoEditor$TextListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 121
    :cond_3
    invoke-super {p0}, Landroid/widget/Editor;->onAttachedToWindow()V

    .line 122
    return-void
.end method

.method onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 126
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoInsertionController()Landroid/widget/OppoCursorController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoInsertionController()Landroid/widget/OppoCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->resetSecondTapFlag()V

    .line 129
    :cond_0
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->onDetached()V

    .line 132
    :cond_1
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->onDetached()V

    .line 135
    :cond_2
    iget-object v0, p0, Landroid/widget/OppoEditor;->mTextListener:Landroid/widget/OppoEditor$TextListener;

    if-eqz v0, :cond_3

    .line 136
    iget-object v0, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextListener:Landroid/widget/OppoEditor$TextListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 139
    :cond_3
    invoke-super {p0}, Landroid/widget/Editor;->onDetachedFromWindow()V

    .line 140
    return-void
.end method

.method onFocusChanged(ZI)V
    .locals 1
    .param p1, "focused"    # Z
    .param p2, "direction"    # I

    .prologue
    .line 314
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoInsertionController()Landroid/widget/OppoCursorController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoInsertionController()Landroid/widget/OppoCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->resetSecondTapFlag()V

    .line 317
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/Editor;->onFocusChanged(ZI)V

    .line 318
    if-nez p1, :cond_1

    .line 319
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->resetTouchOffsets()V

    .line 323
    :cond_1
    return-void
.end method

.method onTapUpEvent()V
    .locals 1

    .prologue
    .line 591
    iget-boolean v0, p0, Landroid/widget/OppoEditor;->mDiscardNextActionUp:Z

    if-nez v0, :cond_0

    .line 592
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->stopTextSelectionMode()V

    .line 594
    :cond_0
    return-void
.end method

.method onTouchEventWrap(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 345
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->hasSelectionController()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isToolbarEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 346
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoSelectionController()Landroid/widget/OppoCursorController;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/OppoCursorController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 347
    const/4 v0, 0x1

    .line 365
    :cond_0
    :goto_0
    return v0

    .line 351
    :cond_1
    iget-object v1, p0, Landroid/widget/OppoEditor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 352
    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/OppoEditor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 353
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/OppoEditor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    .line 356
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_0

    .line 357
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Landroid/widget/OppoEditor;->mLastDownPositionX:F

    .line 358
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Landroid/widget/OppoEditor;->mLastDownPositionY:F

    .line 362
    iput-boolean v0, p0, Landroid/widget/OppoEditor;->mTouchFocusSelected:Z

    .line 363
    iput-boolean v0, p0, Landroid/widget/OppoEditor;->mIgnoreActionUpEvent:Z

    goto :goto_0
.end method

.method onTouchUpEvent(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 201
    iput-boolean v1, p0, Landroid/widget/OppoEditor;->mLongPressed:Z

    .line 202
    iget-boolean v3, p0, Landroid/widget/OppoEditor;->mSelectAllOnFocus:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->didTouchFocusSelect()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 203
    .local v1, "selectAllGotFocus":Z
    :cond_0
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->hideControllers()V

    .line 204
    iget-object v3, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 207
    .local v2, "text":Ljava/lang/CharSequence;
    invoke-direct {p0}, Landroid/widget/OppoEditor;->checkInputMethodScreenMode()V

    .line 209
    if-nez v1, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ltz v3, :cond_2

    .line 211
    iget-object v3, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 212
    .local v0, "offset":I
    check-cast v2, Landroid/text/Spannable;

    .end local v2    # "text":Ljava/lang/CharSequence;
    invoke-static {v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 213
    iget-object v3, p0, Landroid/widget/OppoEditor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v3, :cond_1

    .line 215
    iget-object v3, p0, Landroid/widget/OppoEditor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v3}, Landroid/widget/SpellChecker;->onSelectionChanged()V

    .line 217
    :cond_1
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->extractedTextModeWillBeStartedWrap()Z

    move-result v3

    if-nez v3, :cond_2

    .line 218
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isCursorInsideEasyCorrectionSpanWrap()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 219
    new-instance v3, Landroid/widget/OppoEditor$1;

    invoke-direct {v3, p0}, Landroid/widget/OppoEditor$1;-><init>(Landroid/widget/OppoEditor;)V

    iput-object v3, p0, Landroid/widget/OppoEditor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    .line 227
    iget-object v3, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/OppoEditor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 235
    .end local v0    # "offset":I
    :cond_2
    :goto_0
    return-void

    .line 229
    .restart local v0    # "offset":I
    :cond_3
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->hasInsertionController()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isToolbarEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 230
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoInsertionController()Landroid/widget/OppoCursorController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/OppoCursorController;->show()V

    .line 231
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoInsertionController()Landroid/widget/OppoCursorController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/OppoCursorController;->setSecondTap()V

    goto :goto_0
.end method

.method public performLongClick(Z)Z
    .locals 4
    .param p1, "handled"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 828
    const/4 p1, 0x0

    .line 829
    const/4 v0, 0x0

    .line 830
    .local v0, "vibrate":Z
    iput-boolean v2, p0, Landroid/widget/OppoEditor;->mLongPressed:Z

    .line 832
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->hasMagnifierController()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 833
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->stopTextSelectionMode()V

    .line 834
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoSelectionController()Landroid/widget/OppoCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/OppoCursorController;->hide()V

    .line 835
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoInsertionController()Landroid/widget/OppoCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/OppoCursorController;->hide()V

    .line 836
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getMagnifierController()Landroid/widget/OppoMagnifierController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/OppoMagnifierController;->show()V

    .line 837
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoInsertionController()Landroid/widget/OppoCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/OppoCursorController;->show()V

    .line 838
    iput-boolean v2, p0, Landroid/widget/OppoEditor;->mDiscardNextActionUp:Z

    .line 839
    const/4 p1, 0x1

    .line 842
    :cond_0
    if-nez p1, :cond_1

    .line 843
    iget-boolean v1, p0, Landroid/widget/OppoEditor;->mIsInTextSelectionMode:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/widget/OppoEditor;->touchPositionIsInSelectionWrap()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 844
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->stopTextSelectionMode()V

    .line 845
    const/4 p1, 0x1

    .line 869
    :cond_1
    :goto_0
    if-eqz v0, :cond_6

    .line 870
    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->performHapticFeedback(I)Z

    .line 877
    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 878
    iput-boolean v2, p0, Landroid/widget/OppoEditor;->mDiscardNextActionUp:Z

    .line 881
    :cond_3
    return p1

    .line 847
    :cond_4
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->stopTextSelectionMode()V

    .line 858
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isToolbarEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isSelectionToolbarEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 859
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->startTextSelectionMode()Z

    move-result p1

    move v0, p1

    .line 864
    :cond_5
    const/4 p1, 0x1

    goto :goto_0

    .line 871
    :cond_6
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isInsertToolbarEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/OppoEditor;->hasInsertionController()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 873
    iput-boolean v2, p0, Landroid/widget/OppoEditor;->mDiscardNextActionUp:Z

    .line 874
    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->performHapticFeedback(I)Z

    goto :goto_1
.end method

.method prepareCursorControllers()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 144
    invoke-super {p0}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 146
    iget-boolean v0, p0, Landroid/widget/OppoEditor;->mInsertionControllerEnabled:Z

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->onDetached()V

    .line 149
    iput-object v1, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    .line 152
    :cond_0
    iget-boolean v0, p0, Landroid/widget/OppoEditor;->mSelectionControllerEnabled:Z

    if-nez v0, :cond_1

    .line 153
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->onDetached()V

    .line 155
    iput-object v1, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    .line 159
    :cond_1
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->hasMagnifierController()Z

    move-result v0

    if-nez v0, :cond_2

    .line 160
    iput-object v1, p0, Landroid/widget/OppoEditor;->mMagnifierController:Landroid/widget/OppoMagnifierController;

    .line 162
    :cond_2
    return-void
.end method

.method public setEditFlag(I)V
    .locals 2
    .param p1, "flag"    # I

    .prologue
    .line 885
    iget v0, p0, Landroid/widget/OppoEditor;->mFlag:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/widget/OppoEditor;->mFlag:I

    .line 886
    iget v0, p0, Landroid/widget/OppoEditor;->mFlag:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    .line 887
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->hideControllers()V

    .line 889
    :cond_0
    return-void
.end method

.method public setHasOnTouchListener(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 962
    iput-boolean p1, p0, Landroid/widget/OppoEditor;->mHasOnTouchListener:Z

    .line 963
    return-void
.end method

.method public setLongPressed(Z)V
    .locals 0
    .param p1, "longPressed"    # Z

    .prologue
    .line 456
    iput-boolean p1, p0, Landroid/widget/OppoEditor;->mLongPressed:Z

    .line 457
    return-void
.end method

.method public setTextMaxLength(I)V
    .locals 2
    .param p1, "maxlength"    # I

    .prologue
    .line 1034
    new-instance v0, Landroid/widget/OppoEditor$TextListener;

    invoke-direct {v0, p0, p1}, Landroid/widget/OppoEditor$TextListener;-><init>(Landroid/widget/OppoEditor;I)V

    iput-object v0, p0, Landroid/widget/OppoEditor;->mTextListener:Landroid/widget/OppoEditor$TextListener;

    .line 1035
    iget-object v0, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextListener:Landroid/widget/OppoEditor$TextListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1036
    return-void
.end method

.method setTextSelectionWrap(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 468
    iget-object v0, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 469
    return-void
.end method

.method startSelectionActionMode()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 242
    iget-object v4, p0, Landroid/widget/OppoEditor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v4, :cond_1

    move v1, v3

    .line 279
    :cond_0
    :goto_0
    return v1

    .line 247
    :cond_1
    invoke-direct {p0}, Landroid/widget/OppoEditor;->canSelectText()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->requestFocus()Z

    move-result v4

    if-nez v4, :cond_3

    .line 248
    :cond_2
    const-string v4, "TextView"

    const-string v5, "TextView does not support text selection. Action mode cancelled."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 250
    goto :goto_0

    .line 253
    :cond_3
    iget-object v4, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->hasSelection()Z

    move-result v4

    if-nez v4, :cond_4

    .line 255
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->selectCurrentWordWrap()Z

    move-result v4

    if-nez v4, :cond_4

    move v1, v3

    .line 257
    goto :goto_0

    .line 261
    :cond_4
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->extractedTextModeWillBeStartedWrap()Z

    move-result v2

    .line 265
    .local v2, "willExtract":Z
    if-nez v2, :cond_5

    .line 270
    :cond_5
    iget-object v4, p0, Landroid/widget/OppoEditor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-nez v4, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    const/4 v1, 0x1

    .line 271
    .local v1, "selectionStarted":Z
    :goto_1
    if-eqz v1, :cond_0

    iget-object v4, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Landroid/widget/OppoEditor;->mShowSoftInputOnFocus:Z

    if-eqz v4, :cond_0

    .line 273
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 274
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 275
    iget-object v4, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v3, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    goto :goto_0

    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v1    # "selectionStarted":Z
    :cond_7
    move v1, v3

    .line 270
    goto :goto_1
.end method

.method startTextSelectionMode()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 607
    iget-boolean v3, p0, Landroid/widget/OppoEditor;->mIsInTextSelectionMode:Z

    if-nez v3, :cond_0

    .line 608
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->hasSelectionController()Z

    move-result v3

    if-nez v3, :cond_1

    .line 629
    :cond_0
    :goto_0
    return v1

    .line 612
    :cond_1
    invoke-direct {p0}, Landroid/widget/OppoEditor;->canSelectText()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->requestFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 616
    iget-object v3, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->hasSelection()Z

    move-result v3

    if-nez v3, :cond_2

    .line 617
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->selectCurrentWordWrap()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 622
    :cond_2
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoSelectionController()Landroid/widget/OppoCursorController;

    move-result-object v0

    .line 623
    .local v0, "mOppoSelectionCursorController":Landroid/widget/OppoCursorController;
    if-eqz v0, :cond_0

    .line 624
    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->show()V

    .line 625
    iput-boolean v2, p0, Landroid/widget/OppoEditor;->mIsInTextSelectionMode:Z

    move v1, v2

    .line 626
    goto :goto_0
.end method

.method startTextSelectionModeIfDouleTap(JFFFF)V
    .locals 9
    .param p1, "previousTapUpTime"    # J
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "previousX"    # F
    .param p6, "previousY"    # F

    .prologue
    .line 514
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long v3, v7, p1

    .line 515
    .local v3, "duration":J
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v7

    int-to-long v7, v7

    cmp-long v7, v3, v7

    if-gtz v7, :cond_0

    invoke-virtual {p0, p3, p4}, Landroid/widget/OppoEditor;->isPositionOnTextWrap(FF)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 516
    sub-float v0, p3, p5

    .line 517
    .local v0, "deltaX":F
    sub-float v1, p4, p6

    .line 518
    .local v1, "deltaY":F
    mul-float v7, v0, v0

    mul-float v8, v1, v1

    add-float v2, v7, v8

    .line 519
    .local v2, "distanceSquared":F
    iget-object v7, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    .line 521
    .local v6, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    .line 522
    .local v5, "touchSlop":I
    mul-int v7, v5, v5

    int-to-float v7, v7

    cmpg-float v7, v2, v7

    if-gez v7, :cond_0

    .line 523
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->startTextSelectionMode()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 524
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/OppoEditor;->mDiscardNextActionUp:Z

    .line 528
    .end local v0    # "deltaX":F
    .end local v1    # "deltaY":F
    .end local v2    # "distanceSquared":F
    .end local v5    # "touchSlop":I
    .end local v6    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :cond_0
    return-void
.end method

.method protected stopSelectionActionMode()V
    .locals 2

    .prologue
    .line 186
    invoke-super {p0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 193
    iget-boolean v0, p0, Landroid/widget/OppoEditor;->mIsInTextSelectionMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/OppoEditor;->mIsInTextTranslationMode:Z

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 197
    :cond_0
    return-void
.end method

.method stopTextSelectionMode()V
    .locals 2

    .prologue
    .line 597
    iget-boolean v0, p0, Landroid/widget/OppoEditor;->mIsInTextSelectionMode:Z

    if-eqz v0, :cond_1

    .line 598
    iget-object v0, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 599
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->hide()V

    .line 602
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OppoEditor;->mIsInTextSelectionMode:Z

    .line 604
    :cond_1
    return-void
.end method

.method textview()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method touchPositionIsInSelectionWrap()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 284
    iget-object v6, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 285
    .local v4, "selectionStart":I
    iget-object v6, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 287
    .local v3, "selectionEnd":I
    if-ne v4, v3, :cond_0

    .line 301
    :goto_0
    return v7

    .line 291
    :cond_0
    if-le v4, v3, :cond_1

    .line 292
    move v5, v4

    .line 293
    .local v5, "tmp":I
    move v4, v3

    .line 294
    move v3, v5

    .line 295
    iget-object v6, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 297
    .end local v5    # "tmp":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoSelectionController()Landroid/widget/OppoCursorController;

    move-result-object v2

    .line 298
    .local v2, "selectionController":Landroid/widget/OppoCursorController;
    invoke-virtual {v2}, Landroid/widget/OppoCursorController;->getMinTouchOffset()I

    move-result v1

    .line 299
    .local v1, "minOffset":I
    invoke-virtual {v2}, Landroid/widget/OppoCursorController;->getMaxTouchOffset()I

    move-result v0

    .line 301
    .local v0, "maxOffset":I
    if-lt v1, v4, :cond_2

    if-ge v0, v3, :cond_2

    const/4 v6, 0x1

    :goto_1
    move v7, v6

    goto :goto_0

    :cond_2
    move v6, v7

    goto :goto_1
.end method

.method updateCursorsPositions()V
    .locals 14

    .prologue
    .line 378
    iget-object v12, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    iget v12, v12, Landroid/widget/TextView;->mCursorDrawableRes:I

    if-nez v12, :cond_1

    .line 379
    const/4 v12, 0x0

    iput v12, p0, Landroid/widget/OppoEditor;->mCursorCount:I

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    iget-object v12, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 384
    .local v4, "layout":Landroid/text/Layout;
    iget-object v12, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getHintLayout()Landroid/text/Layout;

    move-result-object v2

    .line 385
    .local v2, "hintLayout":Landroid/text/Layout;
    iget-object v12, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v8

    .line 386
    .local v8, "offset":I
    invoke-virtual {v4, v8}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .line 387
    .local v6, "line":I
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v11

    .line 388
    .local v11, "top":I
    add-int/lit8 v12, v6, 0x1

    invoke-virtual {v4, v12}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 390
    .local v0, "bottom":I
    invoke-direct {p0, v4, v2, v8}, Landroid/widget/OppoEditor;->getPrimaryHorizontal(Landroid/text/Layout;Landroid/text/Layout;I)F

    move-result v9

    .line 391
    .local v9, "primaryHorizontal":F
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineRight(I)F

    move-result v12

    invoke-static {v12}, Landroid/util/FloatMath;->ceil(F)F

    move-result v12

    float-to-int v10, v12

    .line 392
    .local v10, "right":I
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v12

    invoke-static {v12}, Landroid/util/FloatMath;->ceil(F)F

    move-result v12

    float-to-int v5, v12

    .line 393
    .local v5, "left":I
    iget-object v12, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getWidth()I

    move-result v12

    iget-object v13, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v13

    sub-int/2addr v12, v13

    iget-object v13, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v13

    sub-int v3, v12, v13

    .line 395
    .local v3, "hspace":I
    const/4 v1, 0x0

    .line 396
    .local v1, "cursorOffset":I
    sub-int v12, v10, v3

    if-lez v12, :cond_2

    float-to-int v12, v9

    if-ne v12, v10, :cond_2

    .line 397
    iget v1, p0, Landroid/widget/OppoEditor;->mCursrOffset:I

    .line 400
    :cond_2
    iget-object v12, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getGravity()I

    move-result v12

    const/16 v13, 0x11

    if-eq v12, v13, :cond_3

    iget-object v12, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getGravity()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    .line 402
    :cond_3
    const/4 v1, 0x0

    .line 405
    :cond_4
    invoke-virtual {v4, v8}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v12

    if-eqz v12, :cond_6

    const/4 v12, 0x2

    :goto_1
    iput v12, p0, Landroid/widget/OppoEditor;->mCursorCount:I

    .line 407
    move v7, v0

    .line 408
    .local v7, "middle":I
    iget v12, p0, Landroid/widget/OppoEditor;->mCursorCount:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_5

    .line 410
    add-int v12, v11, v0

    shr-int/lit8 v7, v12, 0x1

    .line 414
    :cond_5
    const/4 v12, 0x0

    int-to-float v13, v1

    sub-float v13, v9, v13

    invoke-virtual {p0, v12, v11, v7, v13}, Landroid/widget/OppoEditor;->updateCursorPositionWrap(IIIF)V

    .line 416
    iget v12, p0, Landroid/widget/OppoEditor;->mCursorCount:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    .line 417
    const/4 v12, 0x1

    invoke-virtual {v4, v8}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v13

    invoke-virtual {p0, v12, v7, v0, v13}, Landroid/widget/OppoEditor;->updateCursorPositionWrap(IIIF)V

    goto/16 :goto_0

    .line 405
    .end local v7    # "middle":I
    :cond_6
    const/4 v12, 0x1

    goto :goto_1
.end method
