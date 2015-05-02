.class Lcom/android/internal/app/ResolverActivity$Injector;
.super Ljava/lang/Object;
.source "ResolverActivity.java"


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_CLASS:Landroid/annotation/OppoHook$OppoHookType;
    note = "Jianhua.Lin@Plf.SDK : Add for Oppo Theme"
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1019
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addNegativeButton(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/AlertController$AlertParams;)V
    .locals 2
    .param p0, "activity"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "ap"    # Lcom/android/internal/app/AlertController$AlertParams;

    .prologue
    .line 1022
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 1023
    return-void
.end method

.method static handleClickEvent(Lcom/android/internal/app/ResolverActivity;Landroid/view/View;I)V
    .locals 3
    .param p0, "activity"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 1045
    if-nez p1, :cond_0

    .line 1054
    :goto_0
    return-void

    .line 1048
    :cond_0
    const/4 v0, 0x0

    .line 1049
    .local v0, "always":Z
    const v2, 0xc0204a8

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 1050
    .local v1, "alwaysOption":Landroid/widget/CheckBox;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 1051
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 1053
    :cond_1
    invoke-virtual {p0, p2, v0}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZ)V

    goto :goto_0
.end method

.method static initialize(Lcom/android/internal/app/ResolverActivity;Z)V
    .locals 4
    .param p0, "activity"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "alwaysUseOption"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1030
    if-eqz p1, :cond_1

    .line 1031
    const v2, 0xc0204a8

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1032
    .local v0, "alwaysOption":Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    .line 1033
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1034
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1036
    :cond_0
    const v2, 0x1020287

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1037
    .local v1, "buttonLayout":Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    .line 1038
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1042
    .end local v0    # "alwaysOption":Landroid/widget/CheckBox;
    .end local v1    # "buttonLayout":Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method static oppoLoadIconForResolveInfo(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p1, "mPm"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v5, 0x0

    .line 1058
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v2, :cond_1

    .line 1059
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget v3, p0, Landroid/content/pm/ResolveInfo;->icon:I

    iget-object v4, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, v2, v3, v4, v5}, Landroid/app/OppoThemeHelper;->getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1060
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 1071
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object v0

    .line 1064
    :cond_1
    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v1

    .line 1065
    .local v1, "iconRes":I
    if-eqz v1, :cond_2

    .line 1066
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, v2, v1, v3, v5}, Landroid/app/OppoThemeHelper;->getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1067
    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 1071
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-virtual {p0, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method static setIconSize(Lcom/android/internal/app/ResolverActivity;)I
    .locals 2
    .param p0, "activity"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 1026
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc050430

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method
