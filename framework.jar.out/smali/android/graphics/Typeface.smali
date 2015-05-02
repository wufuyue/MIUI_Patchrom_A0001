.class public Landroid/graphics/Typeface;
.super Ljava/lang/Object;
.source "Typeface.java"


# static fields
.field public static final BOLD:I = 0x1

.field public static final BOLD_ITALIC:I = 0x3

.field private static final DEBUG:Z = false

.field public static final DEFAULT:Landroid/graphics/Typeface;

.field public static final DEFAULT_BOLD:Landroid/graphics/Typeface;

.field private static final DROIDSANS:Ljava/lang/String; = "DroidSans.ttf"

.field private static final DROIDSANS_BOLD:Ljava/lang/String; = "DroidSans-Bold.ttf"

.field private static final FLIP_ALL_APPS:Z = true

.field private static final FONTS_FOLDER:Ljava/lang/String; = "/system/fonts/"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_CODE:Landroid/annotation/OppoHook$OppoHookType;
        note = "BaoQibiao@PLF.GraphicTech.Graphics,2013.09.13:Add for FlipFont"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field private static final FlipFontAppList:[Ljava/lang/String;

.field private static FlipFontPath:Ljava/lang/String; = null

.field private static final FontsLikeDefault:[Ljava/lang/String;

.field public static final ITALIC:I = 0x2

.field public static final MONOSPACE:Landroid/graphics/Typeface;

.field private static final MONOSPACE_INDEX:I = 0x3

.field public static final NORMAL:I = 0x0

.field private static final SANS_INDEX:I = 0x1

.field private static final SANS_LOC_PATH:Ljava/lang/String; = "/data/data/com.android.settings/app_fonts/sans.loc"

.field public static final SANS_SERIF:Landroid/graphics/Typeface;

.field public static final SERIF:Landroid/graphics/Typeface;

.field private static final SERIF_INDEX:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Monotype"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
        note = "BaoQibiao@PLF.GraphicTech.Graphics,2013.09.13:Add for FlipFont"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field private static UIFontBoldPath:Ljava/lang/String; = null

.field private static UIFontPath:Ljava/lang/String; = null

.field private static final UI_FONT_BOLD_PATH:Ljava/lang/String; = "/system/fonts/DroidSansFallback.ttf"

.field private static final UI_FONT_PATH:Ljava/lang/String; = "/system/fonts/DroidSansFallback.ttf"

.field public static isFlipFontUsed:Z

.field public static isLikeDefault:Z

.field private static lastAppInList:Z

.field private static lastAppNameString:Ljava/lang/String;

.field static sDefaults:[Landroid/graphics/Typeface;

.field private static final sStaticDefaults:[Landroid/graphics/Typeface;

.field private static final sTypefaceCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mStyle:I

.field native_instance:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 67
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v6}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/SparseArray;

    .line 89
    const-string v0, ""

    sput-object v0, Landroid/graphics/Typeface;->FlipFontPath:Ljava/lang/String;

    .line 101
    sput-object v1, Landroid/graphics/Typeface;->lastAppNameString:Ljava/lang/String;

    .line 102
    sput-boolean v4, Landroid/graphics/Typeface;->lastAppInList:Z

    .line 105
    sput-object v1, Landroid/graphics/Typeface;->UIFontPath:Ljava/lang/String;

    .line 106
    sput-object v1, Landroid/graphics/Typeface;->UIFontBoldPath:Ljava/lang/String;

    .line 109
    sput-boolean v4, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    .line 111
    sput-boolean v4, Landroid/graphics/Typeface;->isLikeDefault:Z

    .line 114
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "android"

    aput-object v2, v0, v4

    const-string v2, "com.android.*"

    aput-object v2, v0, v5

    const-string v2, "com.cooliris.media"

    aput-object v2, v0, v7

    const-string v2, "jp.co.omronsoft.openwnn"

    aput-object v2, v0, v6

    const/4 v2, 0x4

    const-string v3, "com.monotypeimaging.*"

    aput-object v3, v0, v2

    sput-object v0, Landroid/graphics/Typeface;->FlipFontAppList:[Ljava/lang/String;

    .line 122
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v2, "sans-serif-light"

    aput-object v2, v0, v4

    sput-object v0, Landroid/graphics/Typeface;->FontsLikeDefault:[Ljava/lang/String;

    move-object v0, v1

    .line 374
    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object v0, v1

    .line 375
    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v5}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 376
    const-string/jumbo v0, "sans-serif"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 377
    const-string/jumbo v0, "serif"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 378
    const-string/jumbo v0, "monospace"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 380
    const/4 v0, 0x4

    new-array v2, v0, [Landroid/graphics/Typeface;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    aput-object v0, v2, v4

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    aput-object v0, v2, v5

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v7}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v7

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v6

    sput-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    .line 387
    const/4 v0, 0x4

    new-array v2, v0, [Landroid/graphics/Typeface;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v4

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v5}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v5

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v7}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v7

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v6}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v6

    sput-object v2, Landroid/graphics/Typeface;->sStaticDefaults:[Landroid/graphics/Typeface;

    .line 395
    invoke-static {}, Loppo/content/res/OppoFontUtils;->isNewFontFrame()Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    invoke-static {}, Landroid/graphics/Typeface;->SetFlipFonts()V

    .line 399
    :cond_0
    return-void
.end method

.method private constructor <init>(I)V
    .locals 2
    .param p1, "ni"    # I

    .prologue
    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    .line 362
    if-nez p1, :cond_0

    .line 363
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native typeface cannot be made"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_0
    iput p1, p0, Landroid/graphics/Typeface;->native_instance:I

    .line 367
    invoke-static {p1}, Landroid/graphics/Typeface;->nativeGetStyle(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    .line 368
    return-void
.end method

.method public static SetAppTypeFace(Ljava/lang/String;)V
    .locals 1
    .param p0, "sAppName"    # Ljava/lang/String;
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "BaoQibiao@PLF.GraphicTech.Graphics,2013.09.13:Add for FlipFont"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 767
    invoke-static {p0}, Landroid/graphics/Typeface;->isAppInFlipList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    invoke-static {}, Landroid/graphics/Typeface;->SetFlipFonts()V

    .line 777
    :cond_0
    return-void
.end method

.method public static SetFlipFonts()V
    .locals 13
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "BaoQibiao@PLF.GraphicTech.Graphics,2013.09.13:Add for FlipFont"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 617
    invoke-static {}, Loppo/content/res/OppoFontUtils;->isNewFontFrame()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 756
    .local v3, "strFontPath":Ljava/lang/String;
    .local v4, "strFontPathBold":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 621
    .end local v3    # "strFontPath":Ljava/lang/String;
    .end local v4    # "strFontPathBold":Ljava/lang/String;
    :cond_1
    const-string v4, ""

    .line 624
    .restart local v4    # "strFontPathBold":Ljava/lang/String;
    invoke-static {v9}, Landroid/graphics/Typeface;->getFontPathFlipFont(I)Ljava/lang/String;

    move-result-object v3

    .line 627
    .restart local v3    # "strFontPath":Ljava/lang/String;
    const-string v5, "default"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 630
    sput-boolean v8, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    .line 633
    sget-object v5, Landroid/graphics/Typeface;->UIFontPath:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 637
    const-string v5, ""

    sput-object v5, Landroid/graphics/Typeface;->UIFontPath:Ljava/lang/String;

    .line 638
    const-string v5, ""

    sput-object v5, Landroid/graphics/Typeface;->UIFontBoldPath:Ljava/lang/String;

    .line 640
    new-instance v1, Ljava/io/File;

    const-string v5, "/system/fonts/DroidSansFallback.ttf"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 641
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 642
    const-string v5, "/system/fonts/DroidSansFallback.ttf"

    sput-object v5, Landroid/graphics/Typeface;->UIFontPath:Ljava/lang/String;

    .line 644
    :cond_2
    new-instance v1, Ljava/io/File;

    .end local v1    # "f":Ljava/io/File;
    const-string v5, "/system/fonts/DroidSansFallback.ttf"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 645
    .restart local v1    # "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 646
    const-string v5, "/system/fonts/DroidSansFallback.ttf"

    sput-object v5, Landroid/graphics/Typeface;->UIFontBoldPath:Ljava/lang/String;

    .line 648
    .end local v1    # "f":Ljava/io/File;
    :cond_3
    sget-object v3, Landroid/graphics/Typeface;->UIFontPath:Ljava/lang/String;

    .line 649
    sget-object v4, Landroid/graphics/Typeface;->UIFontBoldPath:Ljava/lang/String;

    .line 662
    :goto_1
    sget-object v5, Landroid/graphics/Typeface;->FlipFontPath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 667
    sput-object v3, Landroid/graphics/Typeface;->FlipFontPath:Ljava/lang/String;

    .line 671
    const/4 v2, 0x0

    .line 675
    .local v2, "iNative":I
    :try_start_0
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    if-eqz v5, :cond_4

    .line 677
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget v2, v5, Landroid/graphics/Typeface;->native_instance:I

    .line 679
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 680
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->nativeCreate(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Landroid/graphics/Typeface;->native_instance:I

    .line 687
    :cond_5
    :goto_2
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget v6, v6, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v6}, Landroid/graphics/Typeface;->nativeGetStyle(I)I

    move-result v6

    iput v6, v5, Landroid/graphics/Typeface;->mStyle:I

    .line 688
    if-eqz v2, :cond_6

    .line 690
    invoke-static {v2}, Landroid/graphics/Typeface;->nativeUnref(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    :cond_6
    :goto_3
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget v2, v5, Landroid/graphics/Typeface;->native_instance:I

    .line 700
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 701
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-static {v12, v9}, Landroid/graphics/Typeface;->nativeCreate(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Landroid/graphics/Typeface;->native_instance:I

    .line 708
    :cond_7
    :goto_4
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget v6, v6, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v6}, Landroid/graphics/Typeface;->nativeGetStyle(I)I

    move-result v6

    iput v6, v5, Landroid/graphics/Typeface;->mStyle:I

    .line 709
    invoke-static {v2}, Landroid/graphics/Typeface;->nativeUnref(I)V

    .line 713
    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v5, v5, v8

    iget v2, v5, Landroid/graphics/Typeface;->native_instance:I

    .line 714
    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v5, v5, v8

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget v6, v6, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v6, v8}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(II)I

    move-result v6

    iput v6, v5, Landroid/graphics/Typeface;->native_instance:I

    .line 715
    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v5, v5, v8

    sget-object v6, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v6, v6, v8

    iget v6, v6, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v6}, Landroid/graphics/Typeface;->nativeGetStyle(I)I

    move-result v6

    iput v6, v5, Landroid/graphics/Typeface;->mStyle:I

    .line 716
    invoke-static {v2}, Landroid/graphics/Typeface;->nativeUnref(I)V

    .line 719
    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v5, v5, v9

    iget v2, v5, Landroid/graphics/Typeface;->native_instance:I

    .line 720
    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v5, v5, v9

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget v6, v6, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v6, v9}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(II)I

    move-result v6

    iput v6, v5, Landroid/graphics/Typeface;->native_instance:I

    .line 721
    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v5, v5, v9

    sget-object v6, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v6, v6, v9

    iget v6, v6, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v6}, Landroid/graphics/Typeface;->nativeGetStyle(I)I

    move-result v6

    iput v6, v5, Landroid/graphics/Typeface;->mStyle:I

    .line 722
    invoke-static {v2}, Landroid/graphics/Typeface;->nativeUnref(I)V

    .line 725
    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v5, v5, v10

    iget v2, v5, Landroid/graphics/Typeface;->native_instance:I

    .line 726
    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v5, v5, v10

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget v6, v6, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v6, v10}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(II)I

    move-result v6

    iput v6, v5, Landroid/graphics/Typeface;->native_instance:I

    .line 727
    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v5, v5, v10

    sget-object v6, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v6, v6, v10

    iget v6, v6, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v6}, Landroid/graphics/Typeface;->nativeGetStyle(I)I

    move-result v6

    iput v6, v5, Landroid/graphics/Typeface;->mStyle:I

    .line 728
    invoke-static {v2}, Landroid/graphics/Typeface;->nativeUnref(I)V

    .line 731
    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v5, v5, v11

    iget v2, v5, Landroid/graphics/Typeface;->native_instance:I

    .line 732
    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v5, v5, v11

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget v6, v6, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v6, v11}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(II)I

    move-result v6

    iput v6, v5, Landroid/graphics/Typeface;->native_instance:I

    .line 733
    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v5, v5, v11

    sget-object v6, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v6, v6, v11

    iget v6, v6, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v6}, Landroid/graphics/Typeface;->nativeGetStyle(I)I

    move-result v6

    iput v6, v5, Landroid/graphics/Typeface;->mStyle:I

    .line 734
    invoke-static {v2}, Landroid/graphics/Typeface;->nativeUnref(I)V

    .line 739
    sget-object v5, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iget v2, v5, Landroid/graphics/Typeface;->native_instance:I

    .line 740
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 741
    sget-object v5, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const-string/jumbo v6, "monospace"

    invoke-static {v6, v8}, Landroid/graphics/Typeface;->nativeCreate(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Landroid/graphics/Typeface;->native_instance:I

    .line 748
    :cond_8
    :goto_5
    sget-object v5, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    sget-object v6, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iget v6, v6, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v6}, Landroid/graphics/Typeface;->nativeGetStyle(I)I

    move-result v6

    iput v6, v5, Landroid/graphics/Typeface;->mStyle:I

    .line 749
    invoke-static {v2}, Landroid/graphics/Typeface;->nativeUnref(I)V

    goto/16 :goto_0

    .line 653
    .end local v2    # "iNative":I
    :cond_9
    sput-boolean v9, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    .line 655
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "DroidSans-Bold.ttf"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 656
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "DroidSans.ttf"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 683
    .restart local v2    # "iNative":I
    :cond_a
    :try_start_1
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v3}, Landroid/graphics/Typeface;->nativeCreateFromFile(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Landroid/graphics/Typeface;->native_instance:I

    .line 684
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget v5, v5, Landroid/graphics/Typeface;->native_instance:I

    if-nez v5, :cond_5

    .line 685
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->nativeCreate(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Landroid/graphics/Typeface;->native_instance:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 692
    :catch_0
    move-exception v0

    .line 693
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 704
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_b
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-static {v4}, Landroid/graphics/Typeface;->nativeCreateFromFile(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Landroid/graphics/Typeface;->native_instance:I

    .line 705
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget v5, v5, Landroid/graphics/Typeface;->native_instance:I

    if-nez v5, :cond_7

    .line 706
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-static {v12, v9}, Landroid/graphics/Typeface;->nativeCreate(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Landroid/graphics/Typeface;->native_instance:I

    goto/16 :goto_4

    .line 744
    :cond_c
    sget-object v5, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget v6, v6, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v6, v8}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(II)I

    move-result v6

    iput v6, v5, Landroid/graphics/Typeface;->native_instance:I

    .line 745
    sget-object v5, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iget v5, v5, Landroid/graphics/Typeface;->native_instance:I

    if-nez v5, :cond_8

    .line 746
    sget-object v5, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const-string/jumbo v6, "monospace"

    invoke-static {v6, v8}, Landroid/graphics/Typeface;->nativeCreate(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Landroid/graphics/Typeface;->native_instance:I

    goto/16 :goto_5
.end method

.method private static _create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 2
    .param p0, "familyName"    # Ljava/lang/String;
    .param p1, "style"    # I
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "BaoQibiao@PLF.GraphicTech.Graphics,2013.09.13:Add for FlipFont"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 148
    new-instance v0, Landroid/graphics/Typeface;

    invoke-static {p0, p1}, Landroid/graphics/Typeface;->nativeCreate(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/Typeface;-><init>(I)V

    return-object v0
.end method

.method public static create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .locals 5
    .param p0, "family"    # Landroid/graphics/Typeface;
    .param p1, "style"    # I
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_CODE:Landroid/annotation/OppoHook$OppoHookType;
        note = "BaoQibiao@PLF.GraphicTech.Graphics,2013.09.13:Add for FlipFont"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 248
    const/4 v0, 0x0

    .line 253
    .local v0, "ni":I
    if-ltz p1, :cond_0

    const/4 v3, 0x3

    if-le p1, v3, :cond_1

    .line 254
    :cond_0
    const/4 p1, 0x0

    .line 257
    :cond_1
    if-eqz p0, :cond_8

    .line 259
    iget v3, p0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v3, p1, :cond_3

    move-object v2, p0

    .line 304
    :cond_2
    :goto_0
    return-object v2

    .line 265
    :cond_3
    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    iget v4, p0, Landroid/graphics/Typeface;->mStyle:I

    aget-object v3, v3, v4

    invoke-virtual {p0, v3}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 266
    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v2, v3, p1

    goto :goto_0

    .line 269
    :cond_4
    iget v0, p0, Landroid/graphics/Typeface;->native_instance:I

    .line 279
    sget-object v3, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 281
    .local v1, "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    if-eqz v1, :cond_5

    .line 282
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    .line 283
    .local v2, "typeface":Landroid/graphics/Typeface;
    if-nez v2, :cond_2

    .line 288
    .end local v2    # "typeface":Landroid/graphics/Typeface;
    :cond_5
    new-instance v2, Landroid/graphics/Typeface;

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(II)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/Typeface;-><init>(I)V

    .line 293
    .restart local v2    # "typeface":Landroid/graphics/Typeface;
    if-eqz v2, :cond_6

    if-eqz p0, :cond_6

    .line 295
    sget-boolean v3, Landroid/graphics/Typeface;->isLikeDefault:Z

    sput-boolean v3, Landroid/graphics/Typeface;->isLikeDefault:Z

    .line 298
    :cond_6
    if-nez v1, :cond_7

    .line 299
    new-instance v1, Landroid/util/SparseArray;

    .end local v1    # "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    const/4 v3, 0x4

    invoke-direct {v1, v3}, Landroid/util/SparseArray;-><init>(I)V

    .line 300
    .restart local v1    # "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    sget-object v3, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 302
    :cond_7
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 274
    .end local v1    # "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    .end local v2    # "typeface":Landroid/graphics/Typeface;
    :cond_8
    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v2, v3, p1

    goto :goto_0
.end method

.method public static create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 4
    .param p0, "familyName"    # Ljava/lang/String;
    .param p1, "style"    # I
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_CODE:Landroid/annotation/OppoHook$OppoHookType;
        note = "BaoQibiao@PLF.GraphicTech.Graphics,2013.09.13:Add for FlipFont"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 169
    invoke-static {}, Loppo/content/res/OppoFontUtils;->isNewFontFrame()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 170
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 171
    .local v1, "tf":Landroid/graphics/Typeface;
    const/4 v0, 0x0

    .local v0, "ix":I
    :goto_0
    sget-object v2, Landroid/graphics/Typeface;->FontsLikeDefault:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 173
    if-eqz p0, :cond_1

    sget-object v2, Landroid/graphics/Typeface;->FontsLikeDefault:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 175
    sput-boolean v3, Landroid/graphics/Typeface;->isLikeDefault:Z

    .line 223
    .end local v0    # "ix":I
    .end local v1    # "tf":Landroid/graphics/Typeface;
    :cond_0
    :goto_1
    return-object v1

    .line 171
    .restart local v0    # "ix":I
    .restart local v1    # "tf":Landroid/graphics/Typeface;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    .end local v0    # "ix":I
    .end local v1    # "tf":Landroid/graphics/Typeface;
    :cond_2
    if-ltz p1, :cond_3

    const/4 v2, 0x3

    if-le p1, v2, :cond_4

    .line 190
    :cond_3
    const/4 p1, 0x0

    .line 193
    :cond_4
    if-nez p0, :cond_5

    .line 194
    sget-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v1, v2, p1

    goto :goto_1

    .line 199
    :cond_5
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 208
    .restart local v1    # "tf":Landroid/graphics/Typeface;
    if-eqz v1, :cond_6

    sget-object v2, Landroid/graphics/Typeface;->sStaticDefaults:[Landroid/graphics/Typeface;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 210
    sget-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v1, v2, p1

    goto :goto_1

    .line 214
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "ix":I
    :goto_2
    sget-object v2, Landroid/graphics/Typeface;->FontsLikeDefault:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 216
    sget-object v2, Landroid/graphics/Typeface;->FontsLikeDefault:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 218
    sput-boolean v3, Landroid/graphics/Typeface;->isLikeDefault:Z

    goto :goto_1

    .line 214
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2
    .param p0, "mgr"    # Landroid/content/res/AssetManager;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 337
    new-instance v0, Landroid/graphics/Typeface;

    invoke-static {p0, p1}, Landroid/graphics/Typeface;->nativeCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/Typeface;-><init>(I)V

    return-object v0
.end method

.method public static createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;
    .locals 2
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 347
    new-instance v0, Landroid/graphics/Typeface;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Typeface;->nativeCreateFromFile(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/Typeface;-><init>(I)V

    return-object v0
.end method

.method public static createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 357
    new-instance v0, Landroid/graphics/Typeface;

    invoke-static {p0}, Landroid/graphics/Typeface;->nativeCreateFromFile(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/Typeface;-><init>(I)V

    return-object v0
.end method

.method public static defaultFromStyle(I)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "style"    # I
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_CODE:Landroid/annotation/OppoHook$OppoHookType;
        note = "BaoQibiao@PLF.GraphicTech.Graphics,2013.09.13:Add for FlipFont"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 319
    if-ltz p0, :cond_0

    const/4 v0, 0x3

    if-le p0, v0, :cond_1

    .line 320
    :cond_0
    const/4 p0, 0x0

    .line 322
    :cond_1
    sget-boolean v0, Loppo/content/res/OppoFontUtils;->isFlipFontUsed:Z

    if-eqz v0, :cond_2

    .line 323
    sget-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v0, v0, p0

    invoke-static {v0}, Loppo/content/res/OppoFontUtils;->flipTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 325
    :goto_0
    return-object v0

    :cond_2
    sget-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static getFontNameFlipFont(I)Ljava/lang/String;
    .locals 4
    .param p0, "typefaceIndex"    # I
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "BaoQibiao@PLF.GraphicTech.Graphics,2013.09.13:Add for FlipFont"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 518
    invoke-static {p0}, Landroid/graphics/Typeface;->getFullFlipFont(I)Ljava/lang/String;

    move-result-object v1

    .line 521
    .local v1, "sx":Ljava/lang/String;
    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 524
    .local v0, "parts":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 526
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 527
    const-string v2, "default"

    .line 531
    :goto_0
    return-object v2

    .line 529
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 531
    :cond_1
    const/4 v2, 0x1

    aget-object v2, v0, v2

    goto :goto_0
.end method

.method public static getFontPathFlipFont(I)Ljava/lang/String;
    .locals 3
    .param p0, "typefaceIndex"    # I
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "BaoQibiao@PLF.GraphicTech.Graphics,2013.09.13:Add for FlipFont"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 539
    invoke-static {p0}, Landroid/graphics/Typeface;->getFullFlipFont(I)Ljava/lang/String;

    move-result-object v1

    .line 542
    .local v1, "sx":Ljava/lang/String;
    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 543
    .local v0, "parts":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    return-object v2
.end method

.method private static getFullFlipFont(I)Ljava/lang/String;
    .locals 12
    .param p0, "typefaceIndex"    # I
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "BaoQibiao@PLF.GraphicTech.Graphics,2013.09.13:Add for FlipFont"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 552
    const-string v9, "default"

    .line 553
    .local v9, "systemFont":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 605
    :cond_0
    :goto_0
    :pswitch_0
    return-object v9

    .line 556
    :pswitch_1
    const-string/jumbo v10, "persist.sys.flipfontpath"

    const-string v11, "empty"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 559
    const-string v10, "empty"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 562
    new-instance v5, Ljava/io/File;

    const-string v10, "/data/data/com.android.settings/app_fonts/sans.loc"

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 563
    .local v5, "file":Ljava/io/File;
    const/4 v6, 0x0

    .line 564
    .local v6, "fis":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 565
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const/4 v2, 0x0

    .line 566
    .local v2, "dis":Ljava/io/DataInputStream;
    const/4 v8, 0x0

    .line 569
    .local v8, "string":Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 571
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .local v7, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 572
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .local v1, "bis":Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 573
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .local v3, "dis":Ljava/io/DataInputStream;
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 576
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 577
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 578
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    move-object v2, v3

    .end local v3    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    move-object v6, v7

    .line 585
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :goto_1
    move-object v9, v8

    .line 589
    :try_start_4
    const-string/jumbo v10, "persist.sys.flipfontpath"

    invoke-static {v10, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 590
    :catch_0
    move-exception v4

    .line 591
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 579
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 580
    .local v4, "e":Ljava/io/FileNotFoundException;
    :goto_2
    const-string v8, "default"

    .line 584
    goto :goto_1

    .line 581
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v4

    .line 582
    .local v4, "e":Ljava/io/IOException;
    :goto_3
    const-string v8, "default"

    .line 583
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 581
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v4

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v4

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_5
    move-exception v4

    move-object v2, v3

    .end local v3    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 579
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_6
    move-exception v4

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_7
    move-exception v4

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_8
    move-exception v4

    move-object v2, v3

    .end local v3    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 553
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static isAppInFlipList(Ljava/lang/String;)Z
    .locals 1
    .param p0, "appNameString"    # Ljava/lang/String;
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "BaoQibiao@PLF.GraphicTech.Graphics,2013.09.13:Add for FlipFont"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 465
    if-eqz p0, :cond_0

    const-string v0, ".cts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 466
    :cond_0
    const/4 v0, 0x0

    .line 470
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static loadAppList()[Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "BaoQibiao@PLF.GraphicTech.Graphics,2013.09.13:Add for FlipFont"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 453
    sget-object v0, Landroid/graphics/Typeface;->FlipFontAppList:[Ljava/lang/String;

    return-object v0
.end method

.method private static native nativeCreate(Ljava/lang/String;I)I
.end method

.method private static native nativeCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)I
.end method

.method private static native nativeCreateFromFile(Ljava/lang/String;)I
.end method

.method private static native nativeCreateFromTypeface(II)I
.end method

.method private static native nativeGetStyle(I)I
.end method

.method private static native nativeUnref(I)V
.end method

.method public static native setGammaForText(FF)V
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 411
    if-ne p0, p1, :cond_1

    .line 416
    :cond_0
    :goto_0
    return v1

    .line 412
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 414
    check-cast v0, Landroid/graphics/Typeface;

    .line 416
    .local v0, "typeface":Landroid/graphics/Typeface;
    iget v3, p0, Landroid/graphics/Typeface;->mStyle:I

    iget v4, v0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/graphics/Typeface;->native_instance:I

    iget v4, v0, Landroid/graphics/Typeface;->native_instance:I

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 403
    :try_start_0
    iget v0, p0, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v0}, Landroid/graphics/Typeface;->nativeUnref(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 407
    return-void

    .line 405
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 421
    iget v0, p0, Landroid/graphics/Typeface;->native_instance:I

    .line 422
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/graphics/Typeface;->mStyle:I

    add-int v0, v1, v2

    .line 423
    return v0
.end method

.method public final isBold()Z
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isItalic()Z
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
