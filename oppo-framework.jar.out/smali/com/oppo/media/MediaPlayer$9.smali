.class Lcom/oppo/media/MediaPlayer$9;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Lcom/oppo/media/OppoMediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/media/MediaPlayer;->createOppoMediaPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/media/MediaPlayer;


# direct methods
.method constructor <init>(Lcom/oppo/media/MediaPlayer;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/oppo/media/MediaPlayer$9;->this$0:Lcom/oppo/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Lcom/oppo/media/OppoMediaPlayer;I)V
    .locals 2
    .param p1, "mp"    # Lcom/oppo/media/OppoMediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 295
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer$9;->this$0:Lcom/oppo/media/MediaPlayer;

    # getter for: Lcom/oppo/media/MediaPlayer;->mOnBufferingUpdateListener:Lcom/oppo/media/MediaPlayer$OnBufferingUpdateListener;
    invoke-static {v0}, Lcom/oppo/media/MediaPlayer;->access$100(Lcom/oppo/media/MediaPlayer;)Lcom/oppo/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer$9;->this$0:Lcom/oppo/media/MediaPlayer;

    # getter for: Lcom/oppo/media/MediaPlayer;->mOnBufferingUpdateListener:Lcom/oppo/media/MediaPlayer$OnBufferingUpdateListener;
    invoke-static {v0}, Lcom/oppo/media/MediaPlayer;->access$100(Lcom/oppo/media/MediaPlayer;)Lcom/oppo/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/media/MediaPlayer$9;->this$0:Lcom/oppo/media/MediaPlayer;

    invoke-interface {v0, v1, p2}, Lcom/oppo/media/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Lcom/oppo/media/MediaPlayer;I)V

    .line 298
    :cond_0
    return-void
.end method
