.class public Lcom/oppo/media/MediaPlayer;
.super Ljava/lang/Object;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/media/MediaPlayer$OnInfoListener;,
        Lcom/oppo/media/MediaPlayer$OnErrorListener;,
        Lcom/oppo/media/MediaPlayer$OnVideoSizeChangedListener;,
        Lcom/oppo/media/MediaPlayer$OnBufferingUpdateListener;,
        Lcom/oppo/media/MediaPlayer$OnCompletionListener;,
        Lcom/oppo/media/MediaPlayer$OnSeekCompleteListener;,
        Lcom/oppo/media/MediaPlayer$OnPreparedListener;,
        Lcom/oppo/media/MediaPlayer$TrackInfo;
    }
.end annotation


# static fields
.field public static final MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:I = 0xc8

.field public static final MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final MEDIA_ERROR_UNKNOWN:I = 0x1

.field public static final MEDIA_INFO_HAS_UNSUPPORT_VIDEO:I = 0x35c

.field public static final MEDIA_PLAYER_IDLE:I = 0x1

.field public static final MEDIA_PLAYER_INITIALIZED:I = 0x2

.field public static final MEDIA_PLAYER_PAUSED:I = 0x20

.field public static final MEDIA_PLAYER_PLAYBACK_COMPLETE:I = 0x80

.field public static final MEDIA_PLAYER_PREPARED:I = 0x8

.field public static final MEDIA_PLAYER_PREPARING:I = 0x4

.field public static final MEDIA_PLAYER_STARTED:I = 0x10

.field public static final MEDIA_PLAYER_STOPPED:I = 0x40

.field private static TAG:Ljava/lang/String;


# instance fields
.field private isOppoCreat:Z

.field private mAudioSessionId:I

.field private mAudioStreamType:I

.field private mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mNeedSeeking:Z

.field private mOnBufferingUpdateListener:Lcom/oppo/media/MediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Lcom/oppo/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Lcom/oppo/media/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Lcom/oppo/media/MediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Lcom/oppo/media/MediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Lcom/oppo/media/MediaPlayer$OnSeekCompleteListener;

.field private mOnVideoSizeChangedListener:Lcom/oppo/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

.field private mPath:Ljava/lang/String;

.field private mPrepareAsync:Z

.field private mScreenOn:Z

.field private mSeekMs:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mUri:Landroid/net/Uri;

.field private mfd:Ljava/io/FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "com_oppo_media_MediaPlayer"

    sput-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    .line 62
    iput-boolean v3, p0, Lcom/oppo/media/MediaPlayer;->mPrepareAsync:Z

    .line 63
    iput-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->mNeedSeeking:Z

    .line 66
    iput-object v0, p0, Lcom/oppo/media/MediaPlayer;->mUri:Landroid/net/Uri;

    .line 67
    iput-object v0, p0, Lcom/oppo/media/MediaPlayer;->mPath:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/oppo/media/MediaPlayer;->mContext:Landroid/content/Context;

    .line 69
    iput-object v0, p0, Lcom/oppo/media/MediaPlayer;->mfd:Ljava/io/FileDescriptor;

    .line 70
    iput-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 71
    iput-object v0, p0, Lcom/oppo/media/MediaPlayer;->mHeaders:Ljava/util/Map;

    .line 72
    iput-object v0, p0, Lcom/oppo/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 73
    iput-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    .line 77
    iput v1, p0, Lcom/oppo/media/MediaPlayer;->mSeekMs:I

    .line 78
    iput v1, p0, Lcom/oppo/media/MediaPlayer;->mAudioSessionId:I

    .line 79
    iput v1, p0, Lcom/oppo/media/MediaPlayer;->mAudioStreamType:I

    .line 80
    iput-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->mScreenOn:Z

    .line 83
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "com_oppo_media_MediaPlayer is running"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iput v3, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    .line 86
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 88
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/oppo/media/MediaPlayer$1;

    invoke-direct {v1, p0}, Lcom/oppo/media/MediaPlayer$1;-><init>(Lcom/oppo/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 97
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/oppo/media/MediaPlayer$2;

    invoke-direct {v1, p0}, Lcom/oppo/media/MediaPlayer$2;-><init>(Lcom/oppo/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 107
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/oppo/media/MediaPlayer$3;

    invoke-direct {v1, p0}, Lcom/oppo/media/MediaPlayer$3;-><init>(Lcom/oppo/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 116
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/oppo/media/MediaPlayer$4;

    invoke-direct {v1, p0}, Lcom/oppo/media/MediaPlayer$4;-><init>(Lcom/oppo/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 133
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/oppo/media/MediaPlayer$5;

    invoke-direct {v1, p0}, Lcom/oppo/media/MediaPlayer$5;-><init>(Lcom/oppo/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 143
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/oppo/media/MediaPlayer$6;

    invoke-direct {v1, p0}, Lcom/oppo/media/MediaPlayer$6;-><init>(Lcom/oppo/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 155
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/oppo/media/MediaPlayer$7;

    invoke-direct {v1, p0}, Lcom/oppo/media/MediaPlayer$7;-><init>(Lcom/oppo/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 169
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/media/MediaPlayer;)Lcom/oppo/media/MediaPlayer$OnPreparedListener;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaPlayer;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOnPreparedListener:Lcom/oppo/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oppo/media/MediaPlayer;)Lcom/oppo/media/MediaPlayer$OnBufferingUpdateListener;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaPlayer;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOnBufferingUpdateListener:Lcom/oppo/media/MediaPlayer$OnBufferingUpdateListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oppo/media/MediaPlayer;)Lcom/oppo/media/MediaPlayer$OnInfoListener;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaPlayer;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOnInfoListener:Lcom/oppo/media/MediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/media/MediaPlayer;)Lcom/oppo/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaPlayer;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOnCompletionListener:Lcom/oppo/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oppo/media/MediaPlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaPlayer;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    return v0
.end method

.method static synthetic access$500(Lcom/oppo/media/MediaPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaPlayer;

    .prologue
    .line 33
    iget v0, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    return v0
.end method

.method static synthetic access$600(Lcom/oppo/media/MediaPlayer;)Lcom/oppo/media/MediaPlayer$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaPlayer;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOnErrorListener:Lcom/oppo/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oppo/media/MediaPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/media/MediaPlayer;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/oppo/media/MediaPlayer;->handleMediaPlayerError()V

    return-void
.end method

.method static synthetic access$800(Lcom/oppo/media/MediaPlayer;)Lcom/oppo/media/MediaPlayer$OnSeekCompleteListener;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaPlayer;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOnSeekCompleteListener:Lcom/oppo/media/MediaPlayer$OnSeekCompleteListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oppo/media/MediaPlayer;)Lcom/oppo/media/MediaPlayer$OnVideoSizeChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaPlayer;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOnVideoSizeChangedListener:Lcom/oppo/media/MediaPlayer$OnVideoSizeChangedListener;

    return-object v0
.end method

.method private createOppoMediaPlayer()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 258
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 261
    :cond_0
    iput-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    .line 263
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0}, Lcom/oppo/media/OppoMediaPlayer;->reset()V

    .line 351
    :goto_0
    return-void

    .line 268
    :cond_1
    new-instance v0, Lcom/oppo/media/OppoMediaPlayer;

    invoke-direct {v0}, Lcom/oppo/media/OppoMediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    .line 270
    iget v0, p0, Lcom/oppo/media/MediaPlayer;->mAudioSessionId:I

    if-ltz v0, :cond_2

    .line 271
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    iget v1, p0, Lcom/oppo/media/MediaPlayer;->mAudioSessionId:I

    invoke-virtual {v0, v1}, Lcom/oppo/media/OppoMediaPlayer;->setAudioSessionId(I)V

    .line 273
    :cond_2
    iget v0, p0, Lcom/oppo/media/MediaPlayer;->mAudioStreamType:I

    if-ltz v0, :cond_3

    .line 274
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    iget v1, p0, Lcom/oppo/media/MediaPlayer;->mAudioStreamType:I

    invoke-virtual {v0, v1}, Lcom/oppo/media/OppoMediaPlayer;->setAudioStreamType(I)V

    .line 277
    :cond_3
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->mScreenOn:Z

    if-eqz v0, :cond_4

    .line 278
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0, v2}, Lcom/oppo/media/OppoMediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 281
    :cond_4
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    new-instance v1, Lcom/oppo/media/MediaPlayer$8;

    invoke-direct {v1, p0}, Lcom/oppo/media/MediaPlayer$8;-><init>(Lcom/oppo/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/oppo/media/OppoMediaPlayer;->setOnPreparedListener(Lcom/oppo/media/OppoMediaPlayer$OnPreparedListener;)V

    .line 291
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    new-instance v1, Lcom/oppo/media/MediaPlayer$9;

    invoke-direct {v1, p0}, Lcom/oppo/media/MediaPlayer$9;-><init>(Lcom/oppo/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/oppo/media/OppoMediaPlayer;->setOnBufferingUpdateListener(Lcom/oppo/media/OppoMediaPlayer$OnBufferingUpdateListener;)V

    .line 301
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    new-instance v1, Lcom/oppo/media/MediaPlayer$10;

    invoke-direct {v1, p0}, Lcom/oppo/media/MediaPlayer$10;-><init>(Lcom/oppo/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/oppo/media/OppoMediaPlayer;->setOnCompletionListener(Lcom/oppo/media/OppoMediaPlayer$OnCompletionListener;)V

    .line 310
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    new-instance v1, Lcom/oppo/media/MediaPlayer$11;

    invoke-direct {v1, p0}, Lcom/oppo/media/MediaPlayer$11;-><init>(Lcom/oppo/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/oppo/media/OppoMediaPlayer;->setOnErrorListener(Lcom/oppo/media/OppoMediaPlayer$OnErrorListener;)V

    .line 321
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    new-instance v1, Lcom/oppo/media/MediaPlayer$12;

    invoke-direct {v1, p0}, Lcom/oppo/media/MediaPlayer$12;-><init>(Lcom/oppo/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/oppo/media/OppoMediaPlayer;->setOnSeekCompleteListener(Lcom/oppo/media/OppoMediaPlayer$OnSeekCompleteListener;)V

    .line 330
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    new-instance v1, Lcom/oppo/media/MediaPlayer$13;

    invoke-direct {v1, p0}, Lcom/oppo/media/MediaPlayer$13;-><init>(Lcom/oppo/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/oppo/media/OppoMediaPlayer;->setOnVideoSizeChangedListener(Lcom/oppo/media/OppoMediaPlayer$OnVideoSizeChangedListener;)V

    .line 341
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    new-instance v1, Lcom/oppo/media/MediaPlayer$14;

    invoke-direct {v1, p0}, Lcom/oppo/media/MediaPlayer$14;-><init>(Lcom/oppo/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/oppo/media/OppoMediaPlayer;->setOnInfoListener(Lcom/oppo/media/OppoMediaPlayer$OnInfoListener;)V

    goto :goto_0
.end method

.method private handleMediaPlayerError()V
    .locals 7

    .prologue
    .line 172
    sget-object v3, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMediaPlayerError() mCurrentState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isOppoCreat:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    monitor-enter p0

    .line 174
    :try_start_0
    iget-boolean v3, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-nez v3, :cond_4

    .line 175
    invoke-direct {p0}, Lcom/oppo/media/MediaPlayer;->createOppoMediaPlayer()V

    .line 179
    iget v2, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    .line 180
    .local v2, "mChangeState":I
    const/4 v3, 0x1

    iput v3, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 184
    :try_start_1
    iget-object v3, p0, Lcom/oppo/media/MediaPlayer;->mfd:Ljava/io/FileDescriptor;

    if-eqz v3, :cond_5

    .line 185
    sget-object v3, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    const-string v4, "handleMediaPlayerError() mOppoMediaPlayer setDataSource(FileDescriptor)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v3, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    iget-object v4, p0, Lcom/oppo/media/MediaPlayer;->mfd:Ljava/io/FileDescriptor;

    invoke-virtual {v3, v4}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/oppo/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v3, :cond_0

    .line 211
    iget-object v3, p0, Lcom/oppo/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p0, v3}, Lcom/oppo/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 215
    :cond_0
    const/4 v3, 0x4

    if-lt v2, v3, :cond_1

    .line 216
    sget-object v3, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMediaPlayerError() mOppoMediaPlayer prepare mPrepareAsync="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/oppo/media/MediaPlayer;->mPrepareAsync:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-boolean v3, p0, Lcom/oppo/media/MediaPlayer;->mPrepareAsync:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_b

    .line 220
    :try_start_3
    invoke-virtual {p0}, Lcom/oppo/media/MediaPlayer;->prepareAsync()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 243
    :cond_1
    :goto_1
    :try_start_4
    iget v3, p0, Lcom/oppo/media/MediaPlayer;->mSeekMs:I

    if-ltz v3, :cond_2

    .line 244
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/oppo/media/MediaPlayer;->mNeedSeeking:Z

    .line 247
    :cond_2
    const/16 v3, 0x10

    if-lt v2, v3, :cond_3

    .line 248
    sget-object v3, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMediaPlayerError() mOppoMediaPlayer start mPrepareAsync="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/oppo/media/MediaPlayer;->mPrepareAsync:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-boolean v3, p0, Lcom/oppo/media/MediaPlayer;->mPrepareAsync:Z

    if-nez v3, :cond_3

    .line 251
    invoke-virtual {p0}, Lcom/oppo/media/MediaPlayer;->start()V

    .line 254
    :cond_3
    monitor-exit p0

    .line 255
    .end local v2    # "mChangeState":I
    :goto_2
    return-void

    .line 177
    :cond_4
    monitor-exit p0

    goto :goto_2

    .line 254
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 188
    .restart local v2    # "mChangeState":I
    :cond_5
    :try_start_5
    iget-object v3, p0, Lcom/oppo/media/MediaPlayer;->mPath:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 189
    sget-object v3, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    const-string v4, "handleMediaPlayerError() mOppoMediaPlayer setDataSource(String)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v3, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    iget-object v4, p0, Lcom/oppo/media/MediaPlayer;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 201
    :catch_0
    move-exception v1

    .line 202
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_6
    sget-object v3, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mOppoMediaPlayer setDataSource error mPath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/oppo/media/MediaPlayer;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mUri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/oppo/media/MediaPlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 204
    iget-object v3, p0, Lcom/oppo/media/MediaPlayer;->mOnErrorListener:Lcom/oppo/media/MediaPlayer$OnErrorListener;

    if-eqz v3, :cond_6

    .line 205
    iget-object v3, p0, Lcom/oppo/media/MediaPlayer;->mOnErrorListener:Lcom/oppo/media/MediaPlayer$OnErrorListener;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, p0, v4, v5}, Lcom/oppo/media/MediaPlayer$OnErrorListener;->onError(Lcom/oppo/media/MediaPlayer;II)Z

    .line 207
    :cond_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 191
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_7
    :try_start_7
    iget-object v3, p0, Lcom/oppo/media/MediaPlayer;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_8

    .line 192
    sget-object v3, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    const-string v4, "handleMediaPlayerError() mOppoMediaPlayer setDataSource(Context, Uri, Map)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v3, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    iget-object v4, p0, Lcom/oppo/media/MediaPlayer;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/oppo/media/MediaPlayer;->mUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/oppo/media/MediaPlayer;->mHeaders:Ljava/util/Map;

    invoke-virtual {v3, v4, v5, v6}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 195
    :cond_8
    sget-object v3, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    const-string v4, "handleMediaPlayerError() mOppoMediaPlayer setDataSource null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v3, p0, Lcom/oppo/media/MediaPlayer;->mOnErrorListener:Lcom/oppo/media/MediaPlayer$OnErrorListener;

    if-eqz v3, :cond_9

    .line 197
    iget-object v3, p0, Lcom/oppo/media/MediaPlayer;->mOnErrorListener:Lcom/oppo/media/MediaPlayer$OnErrorListener;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, p0, v4, v5}, Lcom/oppo/media/MediaPlayer$OnErrorListener;->onError(Lcom/oppo/media/MediaPlayer;II)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 199
    :cond_9
    :try_start_8
    monitor-exit p0

    goto :goto_2

    .line 221
    :catch_1
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v3, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    const-string v4, "handleMediaPlayerError() prepareAsync error!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 224
    iget-object v3, p0, Lcom/oppo/media/MediaPlayer;->mOnErrorListener:Lcom/oppo/media/MediaPlayer$OnErrorListener;

    if-eqz v3, :cond_a

    .line 225
    iget-object v3, p0, Lcom/oppo/media/MediaPlayer;->mOnErrorListener:Lcom/oppo/media/MediaPlayer$OnErrorListener;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, p0, v4, v5}, Lcom/oppo/media/MediaPlayer$OnErrorListener;->onError(Lcom/oppo/media/MediaPlayer;II)Z

    .line 227
    :cond_a
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    .line 231
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_b
    :try_start_9
    invoke-virtual {p0}, Lcom/oppo/media/MediaPlayer;->prepare()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    .line 232
    :catch_2
    move-exception v0

    .line 233
    .local v0, "e":Ljava/io/IOException;
    :try_start_a
    sget-object v3, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    const-string v4, "handleMediaPlayerError() prepare error!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 235
    iget-object v3, p0, Lcom/oppo/media/MediaPlayer;->mOnErrorListener:Lcom/oppo/media/MediaPlayer$OnErrorListener;

    if-eqz v3, :cond_c

    .line 236
    iget-object v3, p0, Lcom/oppo/media/MediaPlayer;->mOnErrorListener:Lcom/oppo/media/MediaPlayer$OnErrorListener;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, p0, v4, v5}, Lcom/oppo/media/MediaPlayer$OnErrorListener;->onError(Lcom/oppo/media/MediaPlayer;II)Z

    .line 238
    :cond_c
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_2
.end method


# virtual methods
.method public deselectTrack(I)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 541
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/oppo/media/OppoMediaPlayer;->deselectTrack(I)V

    .line 546
    :goto_0
    return-void

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->deselectTrack(I)V

    goto :goto_0
.end method

.method public getAudioSessionId()I
    .locals 3

    .prologue
    .line 378
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAudioSessionId() isOppoCreat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0}, Lcom/oppo/media/OppoMediaPlayer;->getAudioSessionId()I

    move-result v0

    iput v0, p0, Lcom/oppo/media/MediaPlayer;->mAudioSessionId:I

    .line 386
    :goto_0
    iget v0, p0, Lcom/oppo/media/MediaPlayer;->mAudioSessionId:I

    return v0

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    iput v0, p0, Lcom/oppo/media/MediaPlayer;->mAudioSessionId:I

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 2

    .prologue
    .line 879
    iget v0, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 880
    const/4 v0, 0x0

    .line 886
    :goto_0
    return v0

    .line 883
    :cond_0
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_1

    .line 884
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0}, Lcom/oppo/media/OppoMediaPlayer;->getCurrentPosition()I

    move-result v0

    goto :goto_0

    .line 886
    :cond_1
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 865
    iget v0, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 866
    const/4 v0, -0x1

    .line 872
    :goto_0
    return v0

    .line 869
    :cond_0
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_1

    .line 870
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0}, Lcom/oppo/media/OppoMediaPlayer;->getDuration()I

    move-result v0

    goto :goto_0

    .line 872
    :cond_1
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    goto :goto_0
.end method

.method public getTrackInfo()[Lcom/oppo/media/MediaPlayer$TrackInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 460
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 462
    .local v1, "mParcel":Landroid/os/Parcel;
    iget-boolean v4, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v4, :cond_0

    .line 463
    iget-object v4, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v4}, Lcom/oppo/media/OppoMediaPlayer;->getTrackInfo()[Lcom/oppo/media/OppoMediaPlayer$TrackInfo;

    move-result-object v2

    .line 464
    .local v2, "mtrackInfo":[Lcom/oppo/media/OppoMediaPlayer$TrackInfo;
    array-length v4, v2

    new-array v3, v4, [Lcom/oppo/media/MediaPlayer$TrackInfo;

    .line 465
    .local v3, "trackInfo":[Lcom/oppo/media/MediaPlayer$TrackInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 466
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 467
    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/oppo/media/OppoMediaPlayer$TrackInfo;->getTrackType()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 468
    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/oppo/media/OppoMediaPlayer$TrackInfo;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 470
    new-instance v4, Lcom/oppo/media/MediaPlayer$TrackInfo;

    invoke-direct {v4, v1}, Lcom/oppo/media/MediaPlayer$TrackInfo;-><init>(Landroid/os/Parcel;)V

    aput-object v4, v3, v0

    .line 465
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 473
    .end local v0    # "i":I
    .end local v2    # "mtrackInfo":[Lcom/oppo/media/OppoMediaPlayer$TrackInfo;
    .end local v3    # "trackInfo":[Lcom/oppo/media/MediaPlayer$TrackInfo;
    :cond_0
    iget-object v4, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v2

    .line 474
    .local v2, "mtrackInfo":[Landroid/media/MediaPlayer$TrackInfo;
    array-length v4, v2

    new-array v3, v4, [Lcom/oppo/media/MediaPlayer$TrackInfo;

    .line 475
    .restart local v3    # "trackInfo":[Lcom/oppo/media/MediaPlayer$TrackInfo;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 476
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 477
    aget-object v4, v2, v0

    invoke-virtual {v4}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 478
    aget-object v4, v2, v0

    invoke-virtual {v4}, Landroid/media/MediaPlayer$TrackInfo;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 479
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 480
    new-instance v4, Lcom/oppo/media/MediaPlayer$TrackInfo;

    invoke-direct {v4, v1}, Lcom/oppo/media/MediaPlayer$TrackInfo;-><init>(Landroid/os/Parcel;)V

    aput-object v4, v3, v0

    .line 475
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 483
    .end local v2    # "mtrackInfo":[Landroid/media/MediaPlayer$TrackInfo;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 485
    return-object v3
.end method

.method public getVideoHeight()I
    .locals 3

    .prologue
    .line 811
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoHeight() isOppoCreat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0}, Lcom/oppo/media/OppoMediaPlayer;->getVideoHeight()I

    move-result v0

    .line 816
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getVideoWidth()I
    .locals 3

    .prologue
    .line 801
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoWidth() isOppoCreat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0}, Lcom/oppo/media/OppoMediaPlayer;->getVideoWidth()I

    move-result v0

    .line 806
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    goto :goto_0
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 748
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0}, Lcom/oppo/media/OppoMediaPlayer;->isLooping()Z

    move-result v0

    .line 751
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isLooping()Z

    move-result v0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 823
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0}, Lcom/oppo/media/OppoMediaPlayer;->isPlaying()Z

    move-result v0

    .line 826
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    goto :goto_0
.end method

.method public pause()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 851
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause() isOppoCreat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    const/16 v0, 0x20

    iput v0, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    .line 855
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0}, Lcom/oppo/media/OppoMediaPlayer;->pause()V

    .line 860
    :goto_0
    return-void

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_0
.end method

.method public prepare()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 783
    sget-object v1, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare() isOppoCreat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/media/MediaPlayer;->mPrepareAsync:Z

    .line 786
    const/4 v1, 0x4

    iput v1, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    .line 788
    iget-boolean v1, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v1, :cond_0

    .line 789
    iget-object v1, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v1}, Lcom/oppo/media/OppoMediaPlayer;->prepare()V

    .line 798
    :goto_0
    return-void

    .line 792
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 793
    :catch_0
    move-exception v0

    .line 794
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 795
    invoke-direct {p0}, Lcom/oppo/media/MediaPlayer;->handleMediaPlayerError()V

    goto :goto_0
.end method

.method public prepareAsync()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 770
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareAsync() isOppoCreat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->mPrepareAsync:Z

    .line 773
    const/4 v0, 0x4

    iput v0, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    .line 775
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0}, Lcom/oppo/media/OppoMediaPlayer;->prepareAsync()V

    .line 780
    :goto_0
    return-void

    .line 778
    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    goto :goto_0
.end method

.method public release()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 584
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release() isOppoCreat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    .line 588
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0}, Lcom/oppo/media/OppoMediaPlayer;->release()V

    .line 590
    iput-object v5, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 593
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 594
    iput-object v5, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 596
    :cond_1
    iput-boolean v4, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    .line 597
    iput v3, p0, Lcom/oppo/media/MediaPlayer;->mAudioSessionId:I

    .line 598
    iput v3, p0, Lcom/oppo/media/MediaPlayer;->mAudioStreamType:I

    .line 599
    iput-boolean v4, p0, Lcom/oppo/media/MediaPlayer;->mScreenOn:Z

    .line 600
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 549
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset() isOppoCreat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/media/MediaPlayer;->mSeekMs:I

    .line 552
    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    .line 554
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_1

    .line 555
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0}, Lcom/oppo/media/OppoMediaPlayer;->reset()V

    .line 556
    iput-boolean v3, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    .line 562
    :cond_0
    :goto_0
    iput-boolean v3, p0, Lcom/oppo/media/MediaPlayer;->mScreenOn:Z

    .line 563
    return-void

    .line 558
    :cond_1
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_0
.end method

.method public seekTo(I)V
    .locals 3
    .param p1, "msec"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 891
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekTo() isOppoCreat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msec="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    iput p1, p0, Lcom/oppo/media/MediaPlayer;->mSeekMs:I

    .line 895
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/oppo/media/OppoMediaPlayer;->seekTo(I)V

    .line 900
    :goto_0
    return-void

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_0
.end method

.method public selectTrack(I)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 518
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/oppo/media/OppoMediaPlayer;->selectTrack(I)V

    .line 523
    :goto_0
    return-void

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->selectTrack(I)V

    goto :goto_0
.end method

.method public setAudioSessionId(I)V
    .locals 3
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 366
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAudioSessionId() isOppoCreat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iput p1, p0, Lcom/oppo/media/MediaPlayer;->mAudioSessionId:I

    .line 370
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/oppo/media/OppoMediaPlayer;->setAudioSessionId(I)V

    .line 375
    :goto_0
    return-void

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    goto :goto_0
.end method

.method public setAudioStreamType(I)V
    .locals 1
    .param p1, "streamtype"    # I

    .prologue
    .line 721
    iput p1, p0, Lcom/oppo/media/MediaPlayer;->mAudioStreamType:I

    .line 722
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/oppo/media/OppoMediaPlayer;->setAudioStreamType(I)V

    .line 727
    :goto_0
    return-void

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    goto :goto_0
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 604
    sget-object v1, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataSource(Context, Uri) isOppoCreat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iput-object p1, p0, Lcom/oppo/media/MediaPlayer;->mContext:Landroid/content/Context;

    .line 607
    iput-object p2, p0, Lcom/oppo/media/MediaPlayer;->mUri:Landroid/net/Uri;

    .line 608
    const/4 v1, 0x2

    iput v1, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    .line 609
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    .line 612
    :try_start_0
    iget-object v1, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 620
    :goto_0
    return-void

    .line 613
    :catch_0
    move-exception v0

    .line 614
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/oppo/media/MediaPlayer;->createOppoMediaPlayer()V

    .line 615
    iget-object v1, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v1, p1, p2}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 616
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 617
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-direct {p0}, Lcom/oppo/media/MediaPlayer;->createOppoMediaPlayer()V

    .line 618
    iget-object v1, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v1, p1, p2}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 624
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataSource(Context, Uri, Map) isOppoCreat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iput-object p1, p0, Lcom/oppo/media/MediaPlayer;->mContext:Landroid/content/Context;

    .line 627
    iput-object p2, p0, Lcom/oppo/media/MediaPlayer;->mUri:Landroid/net/Uri;

    .line 628
    iput-object p3, p0, Lcom/oppo/media/MediaPlayer;->mHeaders:Ljava/util/Map;

    .line 629
    const/4 v1, 0x2

    iput v1, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    .line 630
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    .line 633
    :try_start_0
    iget-object v1, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1, p2, p3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 641
    :goto_0
    return-void

    .line 634
    :catch_0
    move-exception v0

    .line 635
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/oppo/media/MediaPlayer;->createOppoMediaPlayer()V

    .line 636
    iget-object v1, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v1, p1, p2, p3}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    goto :goto_0

    .line 637
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 638
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-direct {p0}, Lcom/oppo/media/MediaPlayer;->createOppoMediaPlayer()V

    .line 639
    iget-object v1, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v1, p1, p2, p3}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 664
    sget-object v1, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataSource(FileDescriptor) isOppoCreat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iput-object p1, p0, Lcom/oppo/media/MediaPlayer;->mfd:Ljava/io/FileDescriptor;

    .line 667
    const/4 v1, 0x2

    iput v1, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    .line 668
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    .line 671
    :try_start_0
    iget-object v1, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 679
    :goto_0
    return-void

    .line 672
    :catch_0
    move-exception v0

    .line 673
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/oppo/media/MediaPlayer;->createOppoMediaPlayer()V

    .line 674
    iget-object v1, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v1, p1}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 675
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 676
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-direct {p0}, Lcom/oppo/media/MediaPlayer;->createOppoMediaPlayer()V

    .line 677
    iget-object v1, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v1, p1}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_0
.end method

.method public setDataSource(Ljava/io/FileDescriptor;JJ)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 683
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataSource(FileDescriptor, long, long) isOppoCreat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iput-object p1, p0, Lcom/oppo/media/MediaPlayer;->mfd:Ljava/io/FileDescriptor;

    .line 686
    const/4 v0, 0x2

    iput v0, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    .line 687
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    .line 690
    :try_start_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 698
    :goto_0
    return-void

    .line 691
    :catch_0
    move-exception v6

    .line 692
    .local v6, "e":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/oppo/media/MediaPlayer;->createOppoMediaPlayer()V

    .line 693
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    goto :goto_0

    .line 694
    .end local v6    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 695
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    invoke-direct {p0}, Lcom/oppo/media/MediaPlayer;->createOppoMediaPlayer()V

    .line 696
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    goto :goto_0
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 645
    sget-object v1, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataSource(String) isOppoCreat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iput-object p1, p0, Lcom/oppo/media/MediaPlayer;->mPath:Ljava/lang/String;

    .line 648
    const/4 v1, 0x2

    iput v1, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    .line 649
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    .line 652
    :try_start_0
    iget-object v1, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 660
    :goto_0
    return-void

    .line 653
    :catch_0
    move-exception v0

    .line 654
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/oppo/media/MediaPlayer;->createOppoMediaPlayer()V

    .line 655
    iget-object v1, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v1, p1}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 656
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 657
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-direct {p0}, Lcom/oppo/media/MediaPlayer;->createOppoMediaPlayer()V

    .line 658
    iget-object v1, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v1, p1}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "sh"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 701
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisplay() isOppoCreat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iput-object p1, p0, Lcom/oppo/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 705
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/oppo/media/OppoMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 710
    :goto_0
    return-void

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_0
.end method

.method public setLooping(Z)V
    .locals 1
    .param p1, "looping"    # Z

    .prologue
    .line 735
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/oppo/media/OppoMediaPlayer;->setLooping(Z)V

    .line 740
    :goto_0
    return-void

    .line 738
    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    goto :goto_0
.end method

.method public setOnBufferingUpdateListener(Lcom/oppo/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oppo/media/MediaPlayer$OnBufferingUpdateListener;

    .prologue
    .line 922
    iput-object p1, p0, Lcom/oppo/media/MediaPlayer;->mOnBufferingUpdateListener:Lcom/oppo/media/MediaPlayer$OnBufferingUpdateListener;

    .line 923
    return-void
.end method

.method public setOnCompletionListener(Lcom/oppo/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oppo/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 918
    iput-object p1, p0, Lcom/oppo/media/MediaPlayer;->mOnCompletionListener:Lcom/oppo/media/MediaPlayer$OnCompletionListener;

    .line 919
    return-void
.end method

.method public setOnErrorListener(Lcom/oppo/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oppo/media/MediaPlayer$OnErrorListener;

    .prologue
    .line 934
    iput-object p1, p0, Lcom/oppo/media/MediaPlayer;->mOnErrorListener:Lcom/oppo/media/MediaPlayer$OnErrorListener;

    .line 935
    return-void
.end method

.method public setOnInfoListener(Lcom/oppo/media/MediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oppo/media/MediaPlayer$OnInfoListener;

    .prologue
    .line 938
    iput-object p1, p0, Lcom/oppo/media/MediaPlayer;->mOnInfoListener:Lcom/oppo/media/MediaPlayer$OnInfoListener;

    .line 939
    return-void
.end method

.method public setOnPreparedListener(Lcom/oppo/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oppo/media/MediaPlayer$OnPreparedListener;

    .prologue
    .line 914
    iput-object p1, p0, Lcom/oppo/media/MediaPlayer;->mOnPreparedListener:Lcom/oppo/media/MediaPlayer$OnPreparedListener;

    .line 915
    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/oppo/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oppo/media/MediaPlayer$OnSeekCompleteListener;

    .prologue
    .line 926
    iput-object p1, p0, Lcom/oppo/media/MediaPlayer;->mOnSeekCompleteListener:Lcom/oppo/media/MediaPlayer$OnSeekCompleteListener;

    .line 927
    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/oppo/media/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oppo/media/MediaPlayer$OnVideoSizeChangedListener;

    .prologue
    .line 930
    iput-object p1, p0, Lcom/oppo/media/MediaPlayer;->mOnVideoSizeChangedListener:Lcom/oppo/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 931
    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 3
    .param p1, "screenOn"    # Z

    .prologue
    .line 756
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenOnWhilePlaying() isOppoCreat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " screenOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_1

    .line 759
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/oppo/media/OppoMediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 764
    :goto_0
    if-eqz p1, :cond_0

    .line 765
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->mScreenOn:Z

    .line 767
    :cond_0
    return-void

    .line 761
    :cond_1
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    goto :goto_0
.end method

.method public setVolume(FF)V
    .locals 3
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    .prologue
    .line 354
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolume() isOppoCreat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " leftVolume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rightVolume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/oppo/media/OppoMediaPlayer;->setVolume(FF)V

    .line 362
    :goto_0
    return-void

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 903
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWakeMode() isOppoCreat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/oppo/media/OppoMediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 910
    :goto_0
    return-void

    .line 908
    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 831
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start() isOppoCreat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    const/16 v0, 0x10

    iput v0, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    .line 835
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_1

    .line 836
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->mNeedSeeking:Z

    if-eqz v0, :cond_0

    .line 837
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOppoMediaPlayer start seekTo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/media/MediaPlayer;->mSeekMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    iget v0, p0, Lcom/oppo/media/MediaPlayer;->mSeekMs:I

    invoke-virtual {p0, v0}, Lcom/oppo/media/MediaPlayer;->seekTo(I)V

    .line 840
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->mNeedSeeking:Z

    .line 841
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/media/MediaPlayer;->mSeekMs:I

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0}, Lcom/oppo/media/OppoMediaPlayer;->start()V

    .line 848
    :goto_0
    return-void

    .line 846
    :cond_1
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0
.end method

.method public stop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 569
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop() isOppoCreat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const/16 v0, 0x40

    iput v0, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    .line 573
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_1

    .line 574
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0}, Lcom/oppo/media/OppoMediaPlayer;->stop()V

    .line 580
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->mScreenOn:Z

    .line 581
    return-void

    .line 576
    :cond_1
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_0
.end method
