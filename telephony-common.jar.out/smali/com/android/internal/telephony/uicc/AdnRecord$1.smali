.class final Lcom/android/internal/telephony/uicc/AdnRecord$1;
.super Ljava/lang/Object;
.source "AdnRecord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/AdnRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/internal/telephony/uicc/AdnRecord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/uicc/AdnRecord;
    .locals 18
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 112
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 113
    .local v3, "efid":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 114
    .local v4, "recordNumber":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 115
    .local v5, "alphaTag":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 116
    .local v6, "number":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 121
    .local v7, "emails":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 122
    .local v8, "number2":Ljava/lang/String;
    const/4 v9, -0x1

    .line 123
    .local v9, "emailefid":I
    const/4 v10, -0x1

    .line 124
    .local v10, "iapefid":I
    const/4 v11, -0x1

    .line 125
    .local v11, "number2efid":I
    const/4 v12, -0x1

    .line 126
    .local v12, "emaillen":I
    const/4 v13, -0x1

    .line 127
    .local v13, "sfi":I
    const/4 v14, -0x1

    .line 128
    .local v14, "EmailRecIndex":I
    const/4 v15, -0x1

    .line 129
    .local v15, "EmailTagNumberInIap":I
    const/16 v16, -0x1

    .line 130
    .local v16, "IapBufferSize":I
    const/4 v2, 0x4

    new-array v0, v2, [B

    move-object/from16 v17, v0

    .line 131
    .local v17, "iap":[B
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 132
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 133
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 134
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 135
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 136
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 137
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 138
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 139
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 140
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 141
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct/range {v2 .. v17}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;IIIIIIII[B)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecord$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/uicc/AdnRecord;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/telephony/uicc/AdnRecord;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 152
    new-array v0, p1, [Lcom/android/internal/telephony/uicc/AdnRecord;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecord$1;->newArray(I)[Lcom/android/internal/telephony/uicc/AdnRecord;

    move-result-object v0

    return-object v0
.end method
