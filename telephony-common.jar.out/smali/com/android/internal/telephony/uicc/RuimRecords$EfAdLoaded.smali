.class Lcom/android/internal/telephony/uicc/RuimRecords$EfAdLoaded;
.super Ljava/lang/Object;
.source "RuimRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/RuimRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfAdLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/RuimRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .locals 0

    .prologue
    .line 551
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfAdLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/uicc/RuimRecords;
    .param p2, "x1"    # Lcom/android/internal/telephony/uicc/RuimRecords$1;

    .prologue
    .line 551
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords$EfAdLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 554
    const-string v0, "EF_AD"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 559
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 560
    .local v0, "data":[B
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 564
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfAdLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "yangli EF_AD: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 566
    array-length v1, v0

    if-ge v1, v5, :cond_2

    .line 567
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfAdLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const-string v2, "Corrupt AD data on SIM"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 571
    :cond_2
    array-length v1, v0

    if-ne v1, v5, :cond_3

    .line 572
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfAdLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const-string v2, "MNC length not present in EF_AD"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 576
    :cond_3
    aget-byte v1, v0, v4

    const/16 v2, 0x80

    if-eq v1, v2, :cond_4

    aget-byte v1, v0, v4

    const/16 v2, 0x81

    if-eq v1, v2, :cond_4

    aget-byte v1, v0, v4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    aget-byte v1, v0, v4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 578
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfAdLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const/4 v2, 0x1

    # setter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mIsTestCard:Z
    invoke-static {v1, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$502(Lcom/android/internal/telephony/uicc/RuimRecords;Z)Z

    goto :goto_0
.end method
