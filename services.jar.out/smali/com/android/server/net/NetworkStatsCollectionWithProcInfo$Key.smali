.class Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;
.super Ljava/lang/Object;
.source "NetworkStatsCollectionWithProcInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;",
        ">;"
    }
.end annotation


# instance fields
.field private final hashCode:I

.field public final ident:Lcom/android/server/net/NetworkIdentitySet;

.field public final set:I

.field public final tag:I

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkIdentitySet;III)V
    .locals 3
    .param p1, "ident"    # Lcom/android/server/net/NetworkIdentitySet;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I

    .prologue
    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    .line 420
    iput p2, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;->uid:I

    .line 421
    iput p3, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;->set:I

    .line 422
    iput p4, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;->tag:I

    .line 423
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;->hashCode:I

    .line 424
    return-void
.end method

.method public static setToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "set"    # I

    .prologue
    .line 461
    packed-switch p0, :pswitch_data_0

    .line 469
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 463
    :pswitch_0
    const-string v0, "ALL"

    goto :goto_0

    .line 465
    :pswitch_1
    const-string v0, "DEFAULT"

    goto :goto_0

    .line 467
    :pswitch_2
    const-string v0, "FOREGROUND"

    goto :goto_0

    .line 461
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static tagToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "tag"    # I

    .prologue
    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;)I
    .locals 2
    .param p1, "another"    # Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;

    .prologue
    .line 443
    iget v0, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;->uid:I

    iget v1, p1, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;->uid:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 410
    check-cast p1, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;->compareTo(Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 433
    instance-of v2, p1, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 434
    check-cast v0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;

    .line 435
    .local v0, "key":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;
    iget v2, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;->uid:I

    iget v3, v0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;->uid:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;->set:I

    iget v3, v0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;->set:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;->tag:I

    iget v3, v0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;->tag:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-static {v2, v3}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 438
    .end local v0    # "key":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 428
    iget v0, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 449
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, " Key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 451
    const-string v1, " set="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;->set:I

    invoke-static {v2}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;->setToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    const-string v1, " tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;->tag:I

    invoke-static {v2}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$Key;->tagToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
