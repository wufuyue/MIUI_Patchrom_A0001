.class Lcom/android/internal/os/ZygoteInit$preloadRunnable;
.super Ljava/lang/Object;
.source "ZygoteInit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/ZygoteInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "preloadRunnable"
.end annotation


# instance fields
.field final classList:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0
    .param p1, "cl"    # [Ljava/lang/String;

    .prologue
    .line 914
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 915
    iput-object p1, p0, Lcom/android/internal/os/ZygoteInit$preloadRunnable;->classList:[Ljava/lang/String;

    .line 916
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lcom/android/internal/os/ZygoteInit$preloadRunnable;->classList:[Ljava/lang/String;

    # invokes: Lcom/android/internal/os/ZygoteInit;->loadClasses([Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->access$200([Ljava/lang/String;)V

    .line 920
    return-void
.end method
