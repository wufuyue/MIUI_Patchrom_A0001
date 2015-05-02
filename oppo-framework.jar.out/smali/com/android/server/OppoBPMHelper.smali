.class public Lcom/android/server/OppoBPMHelper;
.super Ljava/lang/Object;
.source "OppoBPMHelper.java"


# static fields
.field private static LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "OppoProcessManager"

.field public static mOppoProcessManager:Lcom/android/server/am/OppoProcessManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/OppoBPMHelper;->LOCAL_LOGV:Z

    .line 47
    invoke-static {}, Lcom/android/server/am/OppoProcessManager;->getInstance()Lcom/android/server/am/OppoProcessManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/OppoBPMHelper;->mOppoProcessManager:Lcom/android/server/am/OppoProcessManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addPkgToAppWidgetList(Lcom/android/server/AppWidgetServiceImpl$Provider;)V
    .locals 4
    .param p0, "p"    # Lcom/android/server/AppWidgetServiceImpl$Provider;

    .prologue
    .line 167
    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "pkgName":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/OppoBPMHelper;->LOCAL_LOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "OppoProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#####BPM addPkgToAppWidgetList pkg == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    invoke-static {}, Lcom/android/server/OppoBPMUtils;->getInstance()Lcom/android/server/OppoBPMUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/OppoBPMUtils;->addPkgToAppWidgetList(Ljava/lang/String;)Z

    .line 171
    return-void
.end method

.method public static final cancelNotificationsWithPkg(Ljava/lang/String;I)V
    .locals 6
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    .line 133
    const-string v1, "notification"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/NotificationManagerService;

    .line 135
    .local v0, "inm":Lcom/android/server/NotificationManagerService;
    if-nez v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 143
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, p0

    move v5, p1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/NotificationManagerService;->cancelAllNotificationsInt(Ljava/lang/String;IIZI)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static final checkProcessToast(I)Z
    .locals 2
    .param p0, "pid"    # I

    .prologue
    .line 152
    const-string v1, "notification"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/NotificationManagerService;

    .line 154
    .local v0, "inm":Lcom/android/server/NotificationManagerService;
    if-nez v0, :cond_0

    .line 155
    const/4 v1, 0x0

    .line 158
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/server/NotificationManagerService;->checkProcessToast(I)Z

    move-result v1

    goto :goto_0
.end method

.method static final getLiveComponent(Lcom/android/server/WallpaperManagerService;)Landroid/content/ComponentName;
    .locals 4
    .param p0, "wms"    # Lcom/android/server/WallpaperManagerService;

    .prologue
    const/4 v1, 0x0

    .line 101
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v3, p0, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 102
    .local v0, "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    iget-object v2, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    .line 103
    iget-object v2, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.systemui.ImageWallpaper"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 105
    iget-object v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 110
    :cond_0
    return-object v1
.end method

.method public static final getLivePackageForLiveWallPaper()Ljava/lang/String;
    .locals 3

    .prologue
    .line 91
    const-string v2, "wallpaper"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/WallpaperManagerService;

    .line 93
    .local v1, "wallpaper":Lcom/android/server/WallpaperManagerService;
    invoke-static {v1}, Lcom/android/server/OppoBPMHelper;->getLiveComponent(Lcom/android/server/WallpaperManagerService;)Landroid/content/ComponentName;

    move-result-object v0

    .line 94
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static final getLocationListenersUid()[I
    .locals 2

    .prologue
    .line 124
    const-string v1, "location"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService;

    .line 126
    .local v0, "lm":Lcom/android/server/LocationManagerService;
    invoke-virtual {v0}, Lcom/android/server/LocationManagerService;->getLocationListenersUid()[I

    move-result-object v1

    return-object v1
.end method

.method public static final getTouchedWindowPids(Lcom/android/server/wm/WindowManagerService;)[I
    .locals 1
    .param p0, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getInputManagerService()Lcom/android/server/input/InputManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService;->getTouchedWindowPids()[I

    move-result-object v0

    return-object v0
.end method

.method static final reLoadAppWidgetList(Lcom/android/server/AppWidgetServiceImpl;)V
    .locals 10
    .param p0, "awsImpl"    # Lcom/android/server/AppWidgetServiceImpl;

    .prologue
    .line 67
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .local v3, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/AppWidgetServiceImpl;->mPm:Landroid/content/pm/IPackageManager;

    iget-object v7, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x80

    iget v9, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-interface {v6, v3, v7, v8, v9}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    .line 73
    .local v1, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 74
    .local v0, "N":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 75
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 76
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/android/server/AppWidgetServiceImpl;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-result-object v4

    .line 78
    .local v4, "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    if-nez v4, :cond_0

    .line 79
    invoke-virtual {p0, v5}, Lcom/android/server/AppWidgetServiceImpl;->addProviderLocked(Landroid/content/pm/ResolveInfo;)Z

    .line 74
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 73
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 82
    .end local v1    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v6

    .line 85
    :cond_2
    return-void
.end method

.method public static final readAppWidgetList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    invoke-static {}, Lcom/android/server/OppoBPMUtils;->getInstance()Lcom/android/server/OppoBPMUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/OppoBPMUtils;->loadAppWidgetLocked()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final removePkgFromAppWidgetList(Lcom/android/server/AppWidgetServiceImpl$Provider;)V
    .locals 4
    .param p0, "p"    # Lcom/android/server/AppWidgetServiceImpl$Provider;

    .prologue
    .line 178
    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "pkgName":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/OppoBPMHelper;->LOCAL_LOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "OppoProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#####BPM removePkgFromAppWidgetList pkg == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    invoke-static {}, Lcom/android/server/OppoBPMUtils;->getInstance()Lcom/android/server/OppoBPMUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/OppoBPMUtils;->removePkgFromAppWidgetList(Ljava/lang/String;)Z

    .line 182
    return-void
.end method

.method public static final updateProvider(Ljava/lang/String;)V
    .locals 4
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 56
    sget-boolean v1, Lcom/android/server/OppoBPMHelper;->LOCAL_LOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "OppoProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#####BPM updateProvider pkg == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    const-string v1, "appwidget"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppWidgetService;

    .line 60
    .local v0, "appWidget":Lcom/android/server/AppWidgetService;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/server/AppWidgetServiceImpl;->updateProvidersForPackageLocked(Ljava/lang/String;Ljava/util/Set;)Z

    .line 61
    return-void
.end method

.method public static final updateProviders(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "appwidgetList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 51
    .local v1, "pkg":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/OppoBPMHelper;->updateProvider(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_0
    return-void
.end method
