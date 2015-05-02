.class public Lcom/oppo/media/OppoAudioService;
.super Landroid/media/AudioService;
.source "OppoAudioService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OppoAudioService"

.field public static final VOLUMEUNIFORM:Ljava/lang/String; = "oppo_uniform_volume_settings_enabled"


# instance fields
.field BLOG:Z

.field private mOppoContentResolver:Landroid/content/ContentResolver;

.field private mOppoStreamVolumeAlias:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    .line 32
    const-string v4, "persist.sys.assert.panic"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/oppo/media/OppoAudioService;->BLOG:Z

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/media/OppoAudioService;->mOppoContentResolver:Landroid/content/ContentResolver;

    .line 43
    :try_start_0
    const-string v4, "android.media.AudioService"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 48
    .local v0, "cls":Ljava/lang/Class;
    const-string v4, "mStreamVolumeAlias"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 49
    .local v3, "streamVolumeAlias":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 50
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    check-cast v4, [I

    iput-object v4, p0, Lcom/oppo/media/OppoAudioService;->mOppoStreamVolumeAlias:[I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    .line 65
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v3    # "streamVolumeAlias":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v2

    .line 53
    .local v2, "e1":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 54
    .end local v2    # "e1":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 57
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v1

    .line 59
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 60
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 62
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method private isStreamAffectedByUniform(I)Z
    .locals 2
    .param p1, "streamType"    # I

    .prologue
    const/4 v0, 0x1

    .line 69
    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public adjustStreamVolume(IIILjava/lang/String;)V
    .locals 9
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "VolumeUniform":I
    move v3, p3

    .line 100
    .local v3, "streamflags":I
    if-ne v0, v8, :cond_7

    invoke-direct {p0, p1}, Lcom/oppo/media/OppoAudioService;->isStreamAffectedByUniform(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 101
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 102
    iget-object v4, p0, Lcom/oppo/media/OppoAudioService;->mOppoStreamVolumeAlias:[I

    array-length v4, v4

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcom/oppo/media/OppoAudioService;->mOppoStreamVolumeAlias:[I

    aget v4, v4, v1

    if-ne v4, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/oppo/media/OppoAudioService;->isStreamAffectedByUniform(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 103
    iget-object v4, p0, Lcom/oppo/media/OppoAudioService;->mOppoStreamVolumeAlias:[I

    aget v4, v4, v1

    iget-object v5, p0, Lcom/oppo/media/OppoAudioService;->mOppoStreamVolumeAlias:[I

    aget v5, v5, p1

    if-ne v4, v5, :cond_2

    .line 104
    move v3, p3

    .line 110
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/media/OppoAudioService;->getRingerMode()I

    move-result v4

    if-ne v4, v8, :cond_0

    .line 111
    and-int/lit8 v3, v3, -0x11

    .line 113
    :cond_0
    invoke-super {p0, v1, p2, v3, p4}, Landroid/media/AudioService;->adjustStreamVolume(IIILjava/lang/String;)V

    .line 101
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    :cond_2
    and-int/lit8 v3, v3, -0x2

    .line 107
    and-int/lit8 v3, v3, -0x5

    goto :goto_1

    .line 117
    :cond_3
    invoke-super {p0, v6}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v2

    .line 118
    .local v2, "ringVolume":I
    const/4 v1, 0x1

    :goto_2
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 119
    invoke-direct {p0, p1}, Lcom/oppo/media/OppoAudioService;->isStreamAffectedByUniform(I)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-super {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v4

    if-ne v4, v6, :cond_6

    .line 120
    invoke-super {p0, v1}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v4

    if-eq v2, v4, :cond_6

    .line 121
    invoke-virtual {p0, v6, v2, v7, p4}, Lcom/oppo/media/OppoAudioService;->setStreamVolume(IIILjava/lang/String;)V

    .line 133
    .end local v1    # "i":I
    .end local v2    # "ringVolume":I
    :cond_4
    :goto_3
    iget-boolean v4, p0, Lcom/oppo/media/OppoAudioService;->BLOG:Z

    if-eqz v4, :cond_5

    .line 134
    const-string v4, "OppoAudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "end adjustStreamVolume() stream="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", dir="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", flags = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " VolumeUniform: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_5
    return-void

    .line 118
    .restart local v1    # "i":I
    .restart local v2    # "ringVolume":I
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 128
    .end local v1    # "i":I
    .end local v2    # "ringVolume":I
    :cond_7
    invoke-virtual {p0, v5}, Lcom/oppo/media/OppoAudioService;->isStreamMute(I)Z

    move-result v4

    if-eqz v4, :cond_8

    if-lez p2, :cond_8

    .line 129
    const/4 v4, 0x0

    invoke-virtual {p0, v5, v7, v4}, Lcom/oppo/media/OppoAudioService;->setStreamMute(IZLandroid/os/IBinder;)V

    .line 131
    :cond_8
    invoke-super {p0, p1, p2, p3, p4}, Landroid/media/AudioService;->adjustStreamVolume(IIILjava/lang/String;)V

    goto :goto_3
.end method

.method public isStreamAffectedByRingerMode(I)Z
    .locals 5
    .param p1, "streamType"    # I

    .prologue
    const/4 v1, 0x1

    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "VolumeUniform":I
    iget-object v2, p0, Lcom/oppo/media/OppoAudioService;->mOppoContentResolver:Landroid/content/ContentResolver;

    if-eqz v2, :cond_0

    .line 142
    const/4 v0, 0x0

    .line 143
    :cond_0
    iget-boolean v2, p0, Lcom/oppo/media/OppoAudioService;->BLOG:Z

    if-eqz v2, :cond_1

    .line 144
    const-string v2, "OppoAudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isStreamAffectedByRingerMode streamType= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "VolumeUniform = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_1
    if-nez v1, :cond_3

    .line 147
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 153
    :goto_0
    return v1

    .line 150
    :cond_2
    invoke-super {p0, p1}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v1

    goto :goto_0

    .line 153
    :cond_3
    invoke-super {p0, p1}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v1

    goto :goto_0
.end method

.method public setStreamVolume(IIILjava/lang/String;)V
    .locals 5
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "VolumeUniform":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    invoke-direct {p0, p1}, Lcom/oppo/media/OppoAudioService;->isStreamAffectedByUniform(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 76
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 77
    iget-object v2, p0, Lcom/oppo/media/OppoAudioService;->mOppoStreamVolumeAlias:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/oppo/media/OppoAudioService;->mOppoStreamVolumeAlias:[I

    aget v2, v2, v1

    if-ne v2, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/oppo/media/OppoAudioService;->isStreamAffectedByUniform(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    iget-object v2, p0, Lcom/oppo/media/OppoAudioService;->mOppoStreamVolumeAlias:[I

    aget v2, v2, v1

    iget-object v3, p0, Lcom/oppo/media/OppoAudioService;->mOppoStreamVolumeAlias:[I

    aget v3, v3, p1

    if-ne v2, v3, :cond_1

    move v2, p3

    :goto_1
    invoke-super {p0, v1, p2, v2, p4}, Landroid/media/AudioService;->setStreamVolume(IIILjava/lang/String;)V

    .line 76
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_1
    and-int/lit8 v2, p3, -0x2

    and-int/lit8 v2, v2, -0x5

    goto :goto_1

    .line 82
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p0, v4}, Lcom/oppo/media/OppoAudioService;->isStreamMute(I)Z

    move-result v2

    if-eqz v2, :cond_3

    if-lez p2, :cond_3

    .line 83
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v4, v2, v3}, Lcom/oppo/media/OppoAudioService;->setStreamMute(IZLandroid/os/IBinder;)V

    .line 85
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/media/AudioService;->setStreamVolume(IIILjava/lang/String;)V

    .line 87
    :cond_4
    iget-boolean v2, p0, Lcom/oppo/media/OppoAudioService;->BLOG:Z

    if-eqz v2, :cond_5

    .line 88
    const-string v2, "OppoAudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "end setStreamVolume() stream="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", flags = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " VolumeUniform: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_5
    return-void
.end method
