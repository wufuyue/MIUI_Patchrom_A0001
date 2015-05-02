.class Lcom/oppo/media/MediaScanner$MyMediaScannerClient;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Landroid/media/MediaScannerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyMediaScannerClient"
.end annotation


# instance fields
.field private mAlbum:Ljava/lang/String;

.field private mAlbumArtist:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mCompilation:I

.field private mComposer:Ljava/lang/String;

.field private mDuration:I

.field private mFileSize:J

.field private mFileType:I

.field private mGenre:Ljava/lang/String;

.field private mHeight:I

.field private mIsDrm:Z

.field private mLastModified:J

.field private mMimeType:Ljava/lang/String;

.field private mNoMedia:Z

.field private mPath:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTrack:I

.field private mWidth:I

.field private mWriter:Ljava/lang/String;

.field private mYear:I

.field final synthetic this$0:Lcom/oppo/media/MediaScanner;


# direct methods
.method private constructor <init>(Lcom/oppo/media/MediaScanner;)V
    .locals 0

    .prologue
    .line 488
    iput-object p1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/media/MediaScanner;Lcom/oppo/media/MediaScanner$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/media/MediaScanner;
    .param p2, "x1"    # Lcom/oppo/media/MediaScanner$1;

    .prologue
    .line 488
    invoke-direct {p0, p1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;-><init>(Lcom/oppo/media/MediaScanner;)V

    return-void
.end method

.method private convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "expected"    # Ljava/lang/String;

    .prologue
    .line 796
    invoke-virtual {p0, p1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 797
    .local v0, "output":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 798
    const/4 v1, 0x1

    .line 803
    :goto_0
    return v1

    .line 800
    :cond_0
    # getter for: Lcom/oppo/media/MediaScanner;->LOG:Z
    invoke-static {}, Lcom/oppo/media/MediaScanner;->access$500()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 801
    const-string v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' -> \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', expected \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1308
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 1309
    .local v1, "pathFilenameStart":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1310
    .local v0, "filenameLength":I
    invoke-virtual {p1, v1, p2, v2, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int v3, v1, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private endFile(Lcom/oppo/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;
    .locals 27
    .param p1, "entry"    # Lcom/oppo/media/MediaScanner$FileEntry;
    .param p2, "ringtones"    # Z
    .param p3, "notifications"    # Z
    .param p4, "alarms"    # Z
    .param p5, "music"    # Z
    .param p6, "podcasts"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 992
    # getter for: Lcom/oppo/media/MediaScanner;->LOG:Z
    invoke-static {}, Lcom/oppo/media/MediaScanner;->access$500()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 993
    const-string v4, "MediaScanner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "endFile mFileType "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v8, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " noMedia "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ringtones ="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " notif="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " rowId="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/oppo/media/MediaScanner$FileEntry;->mRowId:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 999
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 1002
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->toValues()Landroid/content/ContentValues;

    move-result-object v7

    .line 1003
    .local v7, "values":Landroid/content/ContentValues;
    const-string v4, "title"

    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1004
    .local v26, "title":Ljava/lang/String;
    if-eqz v26, :cond_3

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1005
    :cond_3
    const-string v4, "_data"

    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/oppo/media/MediaFile;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1006
    const-string v4, "title"

    move-object/from16 v0, v26

    invoke-virtual {v7, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    :cond_4
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/oppo/media/MediaScanner$FileEntry;->mRowId:J

    move-wide/from16 v21, v0

    .line 1036
    .local v21, "rowId":J
    # getter for: Lcom/oppo/media/MediaScanner;->LOG:Z
    invoke-static {}, Lcom/oppo/media/MediaScanner;->access$500()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1037
    const-string v4, "MediaScanner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " endFile rowId "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v21

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " ft="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v8, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Lcom/oppo/media/MediaFile;->isAudioFileType(I)Z

    move-result v4

    if-eqz v4, :cond_14

    const-wide/16 v4, 0x0

    cmp-long v4, v21, v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$900(Lcom/oppo/media/MediaScanner;)I

    move-result v4

    if-eqz v4, :cond_14

    .line 1044
    :cond_6
    const-string v4, "is_ringtone"

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1045
    const-string v4, "is_notification"

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1046
    const-string v4, "is_alarm"

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1047
    const-string v4, "is_music"

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1048
    const-string v4, "is_podcast"

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1101
    :cond_7
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mFilesUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$1100(Lcom/oppo/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v23

    .line 1102
    .local v23, "tableUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$1900(Lcom/oppo/media/MediaScanner;)Landroid/media/MediaInserter;

    move-result-object v15

    .line 1103
    .local v15, "inserter":Landroid/media/MediaInserter;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v4, :cond_8

    .line 1104
    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Lcom/oppo/media/MediaFile;->isVideoFileType(I)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1105
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mVideoUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$2000(Lcom/oppo/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v23

    .line 1112
    :cond_8
    :goto_1
    const/4 v6, 0x0

    .line 1113
    .local v6, "result":Landroid/net/Uri;
    const/16 v18, 0x0

    .line 1116
    .local v18, "needToSetSettings":Z
    const/16 v19, 0x0

    .line 1118
    .local v19, "needToSetSettingsSIM2":Z
    const-wide/16 v4, 0x0

    cmp-long v4, v21, v4

    if-nez v4, :cond_22

    .line 1119
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$900(Lcom/oppo/media/MediaScanner;)I

    move-result v4

    if-eqz v4, :cond_9

    .line 1120
    const-string v4, "media_scanner_new_object_id"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static {v5}, Lcom/oppo/media/MediaScanner;->access$900(Lcom/oppo/media/MediaScanner;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1122
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mFilesUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$1100(Lcom/oppo/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v23

    if-ne v0, v4, :cond_b

    .line 1123
    move-object/from16 v0, p1

    iget v14, v0, Lcom/oppo/media/MediaScanner$FileEntry;->mFormat:I

    .line 1124
    .local v14, "format":I
    if-nez v14, :cond_a

    .line 1125
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/oppo/media/MediaFile;->getFormatCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 1127
    :cond_a
    const-string v4, "format"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1132
    .end local v14    # "format":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mWasEmptyPriorToScan:Z
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$2300(Lcom/oppo/media/MediaScanner;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1148
    if-eqz p3, :cond_1a

    .line 1149
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mDefaultNotificationSet:Z
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$2400(Lcom/oppo/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1150
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$2500(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;
    invoke-static {v5}, Lcom/oppo/media/MediaScanner;->access$2500(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1152
    :cond_c
    const/16 v18, 0x1

    .line 1156
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mDefaultNotificationSetSIM2:Z
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$2600(Lcom/oppo/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 1157
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mDefaultNotificationFilenameSIM2:Ljava/lang/String;
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$2700(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mDefaultNotificationFilenameSIM2:Ljava/lang/String;
    invoke-static {v5}, Lcom/oppo/media/MediaScanner;->access$2700(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1159
    :cond_e
    const/16 v19, 0x1

    .line 1196
    :cond_f
    :goto_2
    if-eqz v15, :cond_10

    if-nez v18, :cond_10

    if-eqz v19, :cond_20

    .line 1198
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$1200(Lcom/oppo/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mPackageName:Ljava/lang/String;
    invoke-static {v5}, Lcom/oppo/media/MediaScanner;->access$1000(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-interface {v4, v5, v0, v7}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 1223
    :goto_3
    if-eqz v6, :cond_11

    .line 1224
    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v21

    .line 1225
    move-wide/from16 v0, v21

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/oppo/media/MediaScanner$FileEntry;->mRowId:J

    .line 1274
    :cond_11
    :goto_4
    if-eqz v18, :cond_12

    .line 1275
    if-eqz p3, :cond_29

    .line 1276
    const-string v4, "notification_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v21

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1277
    const-string v4, "oppo_default_notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v21

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1278
    const-string v4, "oppo_sms_notification_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v21

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1280
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    const/4 v5, 0x1

    # setter for: Lcom/oppo/media/MediaScanner;->mDefaultNotificationSet:Z
    invoke-static {v4, v5}, Lcom/oppo/media/MediaScanner;->access$2402(Lcom/oppo/media/MediaScanner;Z)Z

    .line 1292
    :cond_12
    :goto_5
    if-eqz v19, :cond_13

    .line 1293
    if-eqz p3, :cond_2b

    .line 1294
    const-string v4, "notification_sim2"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v21

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1295
    const-string v4, "oppo_default_notification_sim2"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v21

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1296
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    const/4 v5, 0x1

    # setter for: Lcom/oppo/media/MediaScanner;->mDefaultNotificationSetSIM2:Z
    invoke-static {v4, v5}, Lcom/oppo/media/MediaScanner;->access$2602(Lcom/oppo/media/MediaScanner;Z)Z

    .line 1304
    :cond_13
    :goto_6
    return-object v6

    .line 1049
    .end local v6    # "result":Landroid/net/Uri;
    .end local v15    # "inserter":Landroid/media/MediaInserter;
    .end local v18    # "needToSetSettings":Z
    .end local v19    # "needToSetSettingsSIM2":Z
    .end local v23    # "tableUri":Landroid/net/Uri;
    :cond_14
    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v5, 0x1f

    if-ne v4, v5, :cond_7

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v4, :cond_7

    .line 1050
    const/4 v11, 0x0

    .line 1052
    .local v11, "exif":Landroid/media/ExifInterface;
    :try_start_0
    new-instance v12, Landroid/media/ExifInterface;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-direct {v12, v4}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v11    # "exif":Landroid/media/ExifInterface;
    .local v12, "exif":Landroid/media/ExifInterface;
    move-object v11, v12

    .line 1056
    .end local v12    # "exif":Landroid/media/ExifInterface;
    .restart local v11    # "exif":Landroid/media/ExifInterface;
    :goto_7
    if-eqz v11, :cond_7

    .line 1057
    const/4 v4, 0x2

    new-array v0, v4, [F

    move-object/from16 v16, v0

    .line 1058
    .local v16, "latlng":[F
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1059
    const-string v4, "latitude"

    const/4 v5, 0x0

    aget v5, v16, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1060
    const-string v4, "longitude"

    const/4 v5, 0x1

    aget v5, v16, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1063
    :cond_15
    invoke-virtual {v11}, Landroid/media/ExifInterface;->getGpsDateTime()J

    move-result-wide v24

    .line 1064
    .local v24, "time":J
    const-wide/16 v4, -0x1

    cmp-long v4, v24, v4

    if-eqz v4, :cond_17

    .line 1065
    const-string v4, "datetaken"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1077
    :cond_16
    :goto_8
    const-string v4, "Orientation"

    const/4 v5, -0x1

    invoke-virtual {v11, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v20

    .line 1079
    .local v20, "orientation":I
    const/4 v4, -0x1

    move/from16 v0, v20

    if-eq v0, v4, :cond_7

    .line 1082
    packed-switch v20, :pswitch_data_0

    .line 1093
    :pswitch_0
    const/4 v10, 0x0

    .line 1096
    .local v10, "degree":I
    :goto_9
    const-string v4, "orientation"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1071
    .end local v10    # "degree":I
    .end local v20    # "orientation":I
    :cond_17
    invoke-virtual {v11}, Landroid/media/ExifInterface;->getDateTime()J

    move-result-wide v24

    .line 1072
    const-wide/16 v4, -0x1

    cmp-long v4, v24, v4

    if-eqz v4, :cond_16

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v4, v8

    sub-long v4, v4, v24

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v8, 0x5265c00

    cmp-long v4, v4, v8

    if-ltz v4, :cond_16

    .line 1073
    const-string v4, "datetaken"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_8

    .line 1084
    .restart local v20    # "orientation":I
    :pswitch_1
    const/16 v10, 0x5a

    .line 1085
    .restart local v10    # "degree":I
    goto :goto_9

    .line 1087
    .end local v10    # "degree":I
    :pswitch_2
    const/16 v10, 0xb4

    .line 1088
    .restart local v10    # "degree":I
    goto :goto_9

    .line 1090
    .end local v10    # "degree":I
    :pswitch_3
    const/16 v10, 0x10e

    .line 1091
    .restart local v10    # "degree":I
    goto :goto_9

    .line 1106
    .end local v10    # "degree":I
    .end local v11    # "exif":Landroid/media/ExifInterface;
    .end local v16    # "latlng":[F
    .end local v20    # "orientation":I
    .end local v24    # "time":J
    .restart local v15    # "inserter":Landroid/media/MediaInserter;
    .restart local v23    # "tableUri":Landroid/net/Uri;
    :cond_18
    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Lcom/oppo/media/MediaFile;->isImageFileType(I)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1107
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mImagesUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$2100(Lcom/oppo/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v23

    goto/16 :goto_1

    .line 1108
    :cond_19
    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Lcom/oppo/media/MediaFile;->isAudioFileType(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1109
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mAudioUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$2200(Lcom/oppo/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v23

    goto/16 :goto_1

    .line 1162
    .restart local v6    # "result":Landroid/net/Uri;
    .restart local v18    # "needToSetSettings":Z
    .restart local v19    # "needToSetSettingsSIM2":Z
    :cond_1a
    if-eqz p2, :cond_1e

    .line 1163
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mDefaultRingtoneSet:Z
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$2800(Lcom/oppo/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 1164
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$2900(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1b

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;
    invoke-static {v5}, Lcom/oppo/media/MediaScanner;->access$2900(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1166
    :cond_1b
    const/16 v18, 0x1

    .line 1170
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mDefaultRingtoneSetSIM2:Z
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$3000(Lcom/oppo/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 1171
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mDefaultRingtoneFilenameSIM2:Ljava/lang/String;
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$3100(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1d

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mDefaultRingtoneFilenameSIM2:Ljava/lang/String;
    invoke-static {v5}, Lcom/oppo/media/MediaScanner;->access$3100(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1173
    :cond_1d
    const/16 v19, 0x1

    goto/16 :goto_2

    .line 1177
    :cond_1e
    if-eqz p4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mDefaultAlarmSet:Z
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$3200(Lcom/oppo/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 1178
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$3300(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1f

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;
    invoke-static {v5}, Lcom/oppo/media/MediaScanner;->access$3300(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1180
    :cond_1f
    const/16 v18, 0x1

    goto/16 :goto_2

    .line 1199
    :cond_20
    move-object/from16 v0, p1

    iget v4, v0, Lcom/oppo/media/MediaScanner$FileEntry;->mFormat:I

    const/16 v5, 0x3001

    if-ne v4, v5, :cond_21

    .line 1206
    monitor-enter v15

    .line 1207
    :try_start_1
    move-object/from16 v0, v23

    invoke-virtual {v15, v0, v7}, Landroid/media/MediaInserter;->insertwithPriority(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 1208
    monitor-exit v15

    goto/16 :goto_3

    :catchall_0
    move-exception v4

    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 1217
    :cond_21
    monitor-enter v15

    .line 1218
    :try_start_2
    move-object/from16 v0, v23

    invoke-virtual {v15, v0, v7}, Landroid/media/MediaInserter;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 1219
    monitor-exit v15

    goto/16 :goto_3

    :catchall_1
    move-exception v4

    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 1229
    :cond_22
    move-object/from16 v0, v23

    move-wide/from16 v1, v21

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1232
    const-string v4, "_data"

    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1234
    const/16 v17, 0x0

    .line 1235
    .local v17, "mediaType":I
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_25

    .line 1237
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 1238
    .local v13, "fileType":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    if-eqz v4, :cond_23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    const-string v5, "video"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 1240
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v4}, Lcom/oppo/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v13

    .line 1243
    :cond_23
    invoke-static {v13}, Lcom/oppo/media/MediaFile;->isAudioFileType(I)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1244
    const/16 v17, 0x2

    .line 1252
    :cond_24
    :goto_a
    const-string v4, "media_type"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1254
    .end local v13    # "fileType":I
    :cond_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$1200(Lcom/oppo/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mPackageName:Ljava/lang/String;
    invoke-static {v5}, Lcom/oppo/media/MediaScanner;->access$1000(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v4 .. v9}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1245
    .restart local v13    # "fileType":I
    :cond_26
    invoke-static {v13}, Lcom/oppo/media/MediaFile;->isVideoFileType(I)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 1246
    const/16 v17, 0x3

    goto :goto_a

    .line 1247
    :cond_27
    invoke-static {v13}, Lcom/oppo/media/MediaFile;->isImageFileType(I)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 1248
    const/16 v17, 0x1

    goto :goto_a

    .line 1249
    :cond_28
    invoke-static {v13}, Lcom/oppo/media/MediaFile;->isPlayListFileType(I)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1250
    const/16 v17, 0x4

    goto :goto_a

    .line 1281
    .end local v13    # "fileType":I
    .end local v17    # "mediaType":I
    :cond_29
    if-eqz p2, :cond_2a

    .line 1282
    const-string v4, "ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v21

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1283
    const-string v4, "oppo_default_ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v21

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1284
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    const/4 v5, 0x1

    # setter for: Lcom/oppo/media/MediaScanner;->mDefaultRingtoneSet:Z
    invoke-static {v4, v5}, Lcom/oppo/media/MediaScanner;->access$2802(Lcom/oppo/media/MediaScanner;Z)Z

    goto/16 :goto_5

    .line 1285
    :cond_2a
    if-eqz p4, :cond_12

    .line 1286
    const-string v4, "alarm_alert"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v21

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1287
    const-string v4, "oppo_default_alarm"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v21

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1288
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    const/4 v5, 0x1

    # setter for: Lcom/oppo/media/MediaScanner;->mDefaultAlarmSet:Z
    invoke-static {v4, v5}, Lcom/oppo/media/MediaScanner;->access$3202(Lcom/oppo/media/MediaScanner;Z)Z

    goto/16 :goto_5

    .line 1297
    :cond_2b
    if-eqz p2, :cond_13

    .line 1298
    const-string v4, "ringtone_sim2"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v21

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1299
    const-string v4, "oppo_default_ringtone_sim2"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v21

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1300
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    const/4 v5, 0x1

    # setter for: Lcom/oppo/media/MediaScanner;->mDefaultRingtoneSetSIM2:Z
    invoke-static {v4, v5}, Lcom/oppo/media/MediaScanner;->access$3002(Lcom/oppo/media/MediaScanner;Z)Z

    goto/16 :goto_6

    .line 1053
    .end local v6    # "result":Landroid/net/Uri;
    .end local v15    # "inserter":Landroid/media/MediaInserter;
    .end local v18    # "needToSetSettings":Z
    .end local v19    # "needToSetSettingsSIM2":Z
    .end local v23    # "tableUri":Landroid/net/Uri;
    .restart local v11    # "exif":Landroid/media/ExifInterface;
    :catch_0
    move-exception v4

    goto/16 :goto_7

    .line 1082
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getFileTypeFromDrm(Ljava/lang/String;)I
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1327
    iget-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # invokes: Lcom/oppo/media/MediaScanner;->isDrmEnabled()Z
    invoke-static {v3}, Lcom/oppo/media/MediaScanner;->access$200(Lcom/oppo/media/MediaScanner;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1328
    const/4 v2, 0x0

    .line 1349
    :cond_0
    :goto_0
    return v2

    .line 1331
    :cond_1
    const/4 v2, 0x0

    .line 1335
    .local v2, "resultFileType":I
    const/4 v1, 0x0

    .line 1338
    .local v1, "mDrmManagerClient":Landroid/drm/DrmManagerClient;
    if-nez v1, :cond_2

    .line 1339
    new-instance v1, Landroid/drm/DrmManagerClient;

    .end local v1    # "mDrmManagerClient":Landroid/drm/DrmManagerClient;
    iget-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/oppo/media/MediaScanner;->access$3400(Lcom/oppo/media/MediaScanner;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 1342
    .restart local v1    # "mDrmManagerClient":Landroid/drm/DrmManagerClient;
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1343
    invoke-virtual {v1, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1344
    .local v0, "drmMimetype":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1345
    iput-object v0, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 1346
    invoke-static {v0}, Lcom/oppo/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method private parseSubstring(Ljava/lang/String;II)I
    .locals 8
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "defaultValue"    # I

    .prologue
    const/16 v7, 0x39

    const/16 v6, 0x30

    .line 730
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 731
    .local v1, "length":I
    if-ne p2, v1, :cond_0

    .line 744
    .end local p3    # "defaultValue":I
    :goto_0
    return p3

    .line 733
    .restart local p3    # "defaultValue":I
    :cond_0
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "start":I
    .local v3, "start":I
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 735
    .local v0, "ch":C
    if-lt v0, v6, :cond_1

    if-le v0, v7, :cond_2

    :cond_1
    move p2, v3

    .end local v3    # "start":I
    .restart local p2    # "start":I
    goto :goto_0

    .line 737
    .end local p2    # "start":I
    .restart local v3    # "start":I
    :cond_2
    add-int/lit8 v2, v0, -0x30

    .line 738
    .local v2, "result":I
    :goto_1
    if-ge v3, v1, :cond_5

    .line 739
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "start":I
    .restart local p2    # "start":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 740
    if-lt v0, v6, :cond_3

    if-le v0, v7, :cond_4

    :cond_3
    move p3, v2

    goto :goto_0

    .line 741
    :cond_4
    mul-int/lit8 v4, v2, 0xa

    add-int/lit8 v5, v0, -0x30

    add-int v2, v4, v5

    move v3, p2

    .end local p2    # "start":I
    .restart local v3    # "start":I
    goto :goto_1

    :cond_5
    move p2, v3

    .end local v3    # "start":I
    .restart local p2    # "start":I
    move p3, v2

    .line 744
    goto :goto_0
.end method

.method private processImageFile(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 879
    :try_start_0
    iget-object v0, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Lcom/oppo/media/MediaScanner;->access$1800(Lcom/oppo/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 880
    iget-object v0, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Lcom/oppo/media/MediaScanner;->access$1800(Lcom/oppo/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 881
    iget-object v0, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Lcom/oppo/media/MediaScanner;->access$1800(Lcom/oppo/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 882
    iget-object v0, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Lcom/oppo/media/MediaScanner;->access$1800(Lcom/oppo/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v0, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    .line 883
    iget-object v0, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Lcom/oppo/media/MediaScanner;->access$1800(Lcom/oppo/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v0, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mHeight:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 887
    :goto_0
    return-void

    .line 884
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V
    .locals 3
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "rowId"    # J

    .prologue
    .line 1316
    iget-object v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oppo/media/MediaScanner;->access$3400(Lcom/oppo/media/MediaScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1319
    .local v0, "existingSettingValue":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1321
    iget-object v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oppo/media/MediaScanner;->access$3400(Lcom/oppo/media/MediaScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1324
    :cond_0
    return-void
.end method

.method private testGenreNameConverter()V
    .locals 2

    .prologue
    .line 807
    const-string v0, "2"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 808
    const-string v0, "(2)"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 809
    const-string v0, "(2"

    const-string v1, "(2"

    invoke-direct {p0, v0, v1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 810
    const-string v0, "2 Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 811
    const-string v0, "(2) Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 812
    const-string v0, "(2 Foo"

    const-string v1, "(2 Foo"

    invoke-direct {p0, v0, v1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 813
    const-string v0, "2Foo"

    const-string v1, "2Foo"

    invoke-direct {p0, v0, v1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 814
    const-string v0, "(2)Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 815
    const-string v0, "200 Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 816
    const-string v0, "(200) Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 817
    const-string v0, "200Foo"

    const-string v1, "200Foo"

    invoke-direct {p0, v0, v1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 818
    const-string v0, "(200)Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 819
    const-string v0, "200)Foo"

    const-string v1, "200)Foo"

    invoke-direct {p0, v0, v1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 820
    const-string v0, "200) Foo"

    const-string v1, "200) Foo"

    invoke-direct {p0, v0, v1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 821
    return-void
.end method

.method private toValues()Landroid/content/ContentValues;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 938
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 939
    .local v0, "map":Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 940
    iput-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    .line 942
    :cond_0
    const-string v2, "_data"

    iget-object v4, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    const-string v2, "title"

    iget-object v4, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    const-string v2, "date_modified"

    iget-wide v4, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 945
    const-string v2, "_size"

    iget-wide v4, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 946
    const-string v2, "mime_type"

    iget-object v4, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    const-string v2, "is_drm"

    iget-boolean v4, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 949
    const/4 v1, 0x0

    .line 950
    .local v1, "resolution":Ljava/lang/String;
    iget v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    if-lez v2, :cond_1

    iget v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    if-lez v2, :cond_1

    .line 951
    const-string v2, "width"

    iget v4, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 952
    const-string v2, "height"

    iget v4, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 953
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 956
    :cond_1
    iget-boolean v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v2, :cond_2

    .line 957
    iget v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v2}, Lcom/oppo/media/MediaFile;->isVideoFileType(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 958
    const-string v3, "artist"

    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    const-string v3, "album"

    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    const-string v2, "duration"

    iget v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 963
    if-eqz v1, :cond_2

    .line 964
    const-string v2, "resolution"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    :cond_2
    :goto_2
    return-object v0

    .line 958
    :cond_3
    const-string v2, "<unknown>"

    goto :goto_0

    .line 960
    :cond_4
    const-string v2, "<unknown>"

    goto :goto_1

    .line 966
    :cond_5
    iget v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v2}, Lcom/oppo/media/MediaFile;->isImageFileType(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 968
    iget v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v2}, Lcom/oppo/media/MediaFile;->isAudioFileType(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 969
    const-string v4, "artist"

    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    const-string v4, "album_artist"

    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    :goto_4
    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    const-string v3, "album"

    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9

    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    :goto_5
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    const-string v2, "composer"

    iget-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    const-string v2, "genre"

    iget-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    iget v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mYear:I

    if-eqz v2, :cond_6

    .line 978
    const-string v2, "year"

    iget v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mYear:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 980
    :cond_6
    const-string v2, "track"

    iget v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 981
    const-string v2, "duration"

    iget v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 982
    const-string v2, "compilation"

    iget v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 969
    :cond_7
    const-string v2, "<unknown>"

    goto :goto_3

    :cond_8
    move-object v2, v3

    .line 971
    goto :goto_4

    .line 973
    :cond_9
    const-string v2, "<unknown>"

    goto :goto_5
.end method


# virtual methods
.method public beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Lcom/oppo/media/MediaScanner$FileEntry;
    .locals 14
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "lastModified"    # J
    .param p5, "fileSize"    # J
    .param p7, "isDirectory"    # Z
    .param p8, "noMedia"    # Z

    .prologue
    .line 513
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 514
    const/4 v3, 0x0

    iput v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 515
    move-wide/from16 v0, p5

    iput-wide v0, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    .line 516
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    .line 518
    if-nez p7, :cond_3

    .line 519
    if-nez p8, :cond_0

    # invokes: Lcom/oppo/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z
    invoke-static {p1}, Lcom/oppo/media/MediaScanner;->access$100(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 520
    const/16 p8, 0x1

    .line 522
    :cond_0
    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    .line 525
    if-eqz p2, :cond_1

    .line 526
    invoke-static/range {p2 .. p2}, Lcom/oppo/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 530
    :cond_1
    iget v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    if-nez v3, :cond_2

    .line 531
    invoke-static {p1}, Lcom/oppo/media/MediaFile;->getFileType(Ljava/lang/String;)Lcom/oppo/media/MediaFile$MediaFileType;

    move-result-object v12

    .line 532
    .local v12, "mediaFileType":Lcom/oppo/media/MediaFile$MediaFileType;
    if-eqz v12, :cond_2

    .line 533
    iget v3, v12, Lcom/oppo/media/MediaFile$MediaFileType;->fileType:I

    iput v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 534
    iget-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 535
    iget-object v3, v12, Lcom/oppo/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    iput-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 540
    .end local v12    # "mediaFileType":Lcom/oppo/media/MediaFile$MediaFileType;
    :cond_2
    iget-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # invokes: Lcom/oppo/media/MediaScanner;->isDrmEnabled()Z
    invoke-static {v3}, Lcom/oppo/media/MediaScanner;->access$200(Lcom/oppo/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Lcom/oppo/media/MediaFile;->isDrmFileType(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 541
    invoke-direct {p0, p1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->getFileTypeFromDrm(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 551
    :cond_3
    const/4 v2, 0x0

    .line 554
    .local v2, "entry":Lcom/oppo/media/MediaScanner$FileEntry;
    move-object v11, p1

    .line 555
    .local v11, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mCaseInsensitivePaths:Z
    invoke-static {v3}, Lcom/oppo/media/MediaScanner;->access$300(Lcom/oppo/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 556
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 559
    :cond_4
    iget-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mFilesCache:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/oppo/media/MediaScanner;->access$400(Lcom/oppo/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "entry":Lcom/oppo/media/MediaScanner$FileEntry;
    check-cast v2, Lcom/oppo/media/MediaScanner$FileEntry;

    .line 560
    .restart local v2    # "entry":Lcom/oppo/media/MediaScanner$FileEntry;
    # getter for: Lcom/oppo/media/MediaScanner;->LOG:Z
    invoke-static {}, Lcom/oppo/media/MediaScanner;->access$500()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 566
    :cond_5
    iget-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mIsScanSingleFile:Z
    invoke-static {v3}, Lcom/oppo/media/MediaScanner;->access$600(Lcom/oppo/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez v2, :cond_6

    .line 567
    iget-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    invoke-virtual {v3, p1}, Lcom/oppo/media/MediaScanner;->makeEntryFor(Ljava/lang/String;)Lcom/oppo/media/MediaScanner$FileEntry;

    move-result-object v2

    .line 568
    iget-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mIsScanSingleFile:Z
    invoke-static {v3}, Lcom/oppo/media/MediaScanner;->access$600(Lcom/oppo/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 569
    iget-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    const/4 v4, 0x0

    # setter for: Lcom/oppo/media/MediaScanner;->mIsScanSingleFile:Z
    invoke-static {v3, v4}, Lcom/oppo/media/MediaScanner;->access$602(Lcom/oppo/media/MediaScanner;Z)Z

    .line 575
    :cond_6
    if-eqz v2, :cond_b

    iget-wide v3, v2, Lcom/oppo/media/MediaScanner$FileEntry;->mLastModified:J

    sub-long v9, p3, v3

    .line 576
    .local v9, "delta":J
    :goto_0
    const-wide/16 v3, 0x1

    cmp-long v3, v9, v3

    if-gtz v3, :cond_7

    const-wide/16 v3, -0x1

    cmp-long v3, v9, v3

    if-gez v3, :cond_c

    :cond_7
    const/4 v13, 0x1

    .line 577
    .local v13, "wasModified":Z
    :goto_1
    # getter for: Lcom/oppo/media/MediaScanner;->LOG:Z
    invoke-static {}, Lcom/oppo/media/MediaScanner;->access$500()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 582
    :cond_8
    if-eqz v2, :cond_9

    if-eqz v13, :cond_a

    .line 583
    :cond_9
    if-eqz v13, :cond_d

    .line 584
    move-wide/from16 v0, p3

    iput-wide v0, v2, Lcom/oppo/media/MediaScanner$FileEntry;->mLastModified:J

    .line 589
    :goto_2
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/oppo/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    .line 592
    :cond_a
    iget-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mProcessPlaylists:Z
    invoke-static {v3}, Lcom/oppo/media/MediaScanner;->access$700(Lcom/oppo/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Lcom/oppo/media/MediaFile;->isPlayListFileType(I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 599
    iget-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/oppo/media/MediaScanner;->access$800(Lcom/oppo/media/MediaScanner;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 600
    :try_start_0
    iget-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/oppo/media/MediaScanner;->access$800(Lcom/oppo/media/MediaScanner;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    const/4 v2, 0x0

    .line 626
    .end local v2    # "entry":Lcom/oppo/media/MediaScanner$FileEntry;
    :goto_3
    return-object v2

    .line 575
    .end local v9    # "delta":J
    .end local v13    # "wasModified":Z
    .restart local v2    # "entry":Lcom/oppo/media/MediaScanner$FileEntry;
    :cond_b
    const-wide/16 v9, 0x0

    goto :goto_0

    .line 576
    .restart local v9    # "delta":J
    :cond_c
    const/4 v13, 0x0

    goto :goto_1

    .line 586
    .restart local v13    # "wasModified":Z
    :cond_d
    new-instance v2, Lcom/oppo/media/MediaScanner$FileEntry;

    .end local v2    # "entry":Lcom/oppo/media/MediaScanner$FileEntry;
    const-wide/16 v3, 0x0

    if-eqz p7, :cond_e

    const/16 v8, 0x3001

    :goto_4
    move-object v5, p1

    move-wide/from16 v6, p3

    invoke-direct/range {v2 .. v8}, Lcom/oppo/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V

    .restart local v2    # "entry":Lcom/oppo/media/MediaScanner$FileEntry;
    goto :goto_2

    .end local v2    # "entry":Lcom/oppo/media/MediaScanner$FileEntry;
    :cond_e
    const/4 v8, 0x0

    goto :goto_4

    .line 601
    .restart local v2    # "entry":Lcom/oppo/media/MediaScanner$FileEntry;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 609
    :cond_f
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 610
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    .line 611
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    .line 612
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 613
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    .line 614
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    .line 615
    const/4 v3, 0x0

    iput v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    .line 616
    const/4 v3, 0x0

    iput v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mYear:I

    .line 617
    const/4 v3, 0x0

    iput v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    .line 618
    iput-object p1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    .line 619
    move-wide/from16 v0, p3

    iput-wide v0, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    .line 620
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    .line 621
    const/4 v3, 0x0

    iput v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    .line 622
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    .line 623
    const/4 v3, 0x0

    iput v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    .line 624
    const/4 v3, 0x0

    iput v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    goto :goto_3
.end method

.method public doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    .locals 23
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "lastModified"    # J
    .param p5, "fileSize"    # J
    .param p7, "isDirectory"    # Z
    .param p8, "scanAlways"    # Z
    .param p9, "noMedia"    # Z

    .prologue
    .line 652
    const/16 v19, 0x0

    .line 653
    .local v19, "result":Landroid/net/Uri;
    # getter for: Lcom/oppo/media/MediaScanner;->LOG:Z
    invoke-static {}, Lcom/oppo/media/MediaScanner;->access$500()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_0
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move/from16 v10, p7

    move/from16 v11, p9

    .line 660
    :try_start_0
    invoke-virtual/range {v3 .. v11}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Lcom/oppo/media/MediaScanner$FileEntry;

    move-result-object v4

    .line 666
    .local v4, "entry":Lcom/oppo/media/MediaScanner$FileEntry;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static {v3}, Lcom/oppo/media/MediaScanner;->access$900(Lcom/oppo/media/MediaScanner;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 667
    const-wide/16 v10, 0x0

    iput-wide v10, v4, Lcom/oppo/media/MediaScanner$FileEntry;->mRowId:J

    .line 669
    :cond_1
    if-eqz v4, :cond_2

    # getter for: Lcom/oppo/media/MediaScanner;->LOG:Z
    invoke-static {}, Lcom/oppo/media/MediaScanner;->access$500()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 672
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Lcom/oppo/media/MediaFile;->isVideoFileType(I)Z

    move-result v17

    .line 673
    .local v17, "isvideo":Z
    move-object/from16 v0, p0

    iget v3, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Lcom/oppo/media/MediaFile;->isImageFileType(I)Z

    move-result v16

    .line 674
    .local v16, "isimage":Z
    if-nez v17, :cond_3

    if-eqz v16, :cond_6

    :cond_3
    const-wide/16 v10, 0x0

    cmp-long v3, p5, v10

    if-nez v3, :cond_6

    .line 675
    # getter for: Lcom/oppo/media/MediaScanner;->LOG:Z
    invoke-static {}, Lcom/oppo/media/MediaScanner;->access$500()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 678
    :cond_4
    iget-wide v10, v4, Lcom/oppo/media/MediaScanner$FileEntry;->mRowId:J

    const-wide/16 v20, 0x0

    cmp-long v3, v10, v20

    if-lez v3, :cond_5

    .line 679
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v3}, Lcom/oppo/media/MediaScanner;->access$1200(Lcom/oppo/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mPackageName:Ljava/lang/String;
    invoke-static {v10}, Lcom/oppo/media/MediaScanner;->access$1000(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mFilesUri:Landroid/net/Uri;
    invoke-static {v11}, Lcom/oppo/media/MediaScanner;->access$1100(Lcom/oppo/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v11

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "_id="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-wide v0, v4, Lcom/oppo/media/MediaScanner$FileEntry;->mRowId:J

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v3, v10, v11, v0, v1}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 681
    :cond_5
    const/4 v3, 0x0

    .line 726
    .end local v4    # "entry":Lcom/oppo/media/MediaScanner$FileEntry;
    .end local v16    # "isimage":Z
    .end local v17    # "isvideo":Z
    :goto_0
    return-object v3

    .line 684
    .restart local v4    # "entry":Lcom/oppo/media/MediaScanner$FileEntry;
    .restart local v16    # "isimage":Z
    .restart local v17    # "isvideo":Z
    :cond_6
    if-eqz v4, :cond_8

    iget-boolean v3, v4, Lcom/oppo/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    if-nez v3, :cond_7

    if-eqz p8, :cond_8

    .line 685
    :cond_7
    if-eqz p9, :cond_9

    .line 686
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->endFile(Lcom/oppo/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;

    move-result-object v19

    .end local v4    # "entry":Lcom/oppo/media/MediaScanner$FileEntry;
    .end local v16    # "isimage":Z
    .end local v17    # "isvideo":Z
    :cond_8
    :goto_1
    move-object/from16 v3, v19

    .line 726
    goto :goto_0

    .line 688
    .restart local v4    # "entry":Lcom/oppo/media/MediaScanner$FileEntry;
    .restart local v16    # "isimage":Z
    .restart local v17    # "isvideo":Z
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    .line 689
    .local v18, "lowpath":Ljava/lang/String;
    const-string v3, "/ringtones/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_10

    const/4 v5, 0x1

    .line 690
    .local v5, "ringtones":Z
    :goto_2
    const-string v3, "/notifications/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_11

    const/4 v6, 0x1

    .line 691
    .local v6, "notifications":Z
    :goto_3
    const-string v3, "/alarms/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_12

    const/4 v7, 0x1

    .line 692
    .local v7, "alarms":Z
    :goto_4
    const-string v3, "/podcasts/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_13

    const/4 v9, 0x1

    .line 693
    .local v9, "podcasts":Z
    :goto_5
    const-string v3, "/music/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_a

    if-nez v5, :cond_14

    if-nez v6, :cond_14

    if-nez v7, :cond_14

    if-nez v9, :cond_14

    :cond_a
    const/4 v8, 0x1

    .line 696
    .local v8, "music":Z
    :goto_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Lcom/oppo/media/MediaFile;->isAudioFileType(I)Z

    move-result v15

    .line 697
    .local v15, "isaudio":Z
    if-nez v15, :cond_b

    if-nez v17, :cond_b

    if-eqz v16, :cond_c

    .line 698
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mExternalIsEmulated:Z
    invoke-static {v3}, Lcom/oppo/media/MediaScanner;->access$1300(Lcom/oppo/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mExternalStoragePath:Ljava/lang/String;
    invoke-static {v3}, Lcom/oppo/media/MediaScanner;->access$1400(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 700
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getMediaStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mExternalStoragePath:Ljava/lang/String;
    invoke-static {v10}, Lcom/oppo/media/MediaScanner;->access$1400(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 702
    .local v12, "directPath":Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 703
    .local v14, "f":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 704
    move-object/from16 p1, v12

    .line 710
    .end local v12    # "directPath":Ljava/lang/String;
    .end local v14    # "f":Ljava/io/File;
    :cond_c
    if-nez v15, :cond_d

    if-eqz v17, :cond_e

    .line 711
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    # invokes: Lcom/oppo/media/MediaScanner;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    invoke-static {v3, v0, v1, v2}, Lcom/oppo/media/MediaScanner;->access$1500(Lcom/oppo/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 714
    :cond_e
    if-eqz v16, :cond_f

    .line 715
    invoke-direct/range {p0 .. p1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->processImageFile(Ljava/lang/String;)V

    :cond_f
    move-object/from16 v3, p0

    .line 718
    invoke-direct/range {v3 .. v9}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->endFile(Lcom/oppo/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    goto/16 :goto_1

    .line 689
    .end local v5    # "ringtones":Z
    .end local v6    # "notifications":Z
    .end local v7    # "alarms":Z
    .end local v8    # "music":Z
    .end local v9    # "podcasts":Z
    .end local v15    # "isaudio":Z
    :cond_10
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 690
    .restart local v5    # "ringtones":Z
    :cond_11
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 691
    .restart local v6    # "notifications":Z
    :cond_12
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 692
    .restart local v7    # "alarms":Z
    :cond_13
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 693
    .restart local v9    # "podcasts":Z
    :cond_14
    const/4 v8, 0x0

    goto/16 :goto_6

    .line 721
    .end local v4    # "entry":Lcom/oppo/media/MediaScanner$FileEntry;
    .end local v5    # "ringtones":Z
    .end local v6    # "notifications":Z
    .end local v7    # "alarms":Z
    .end local v9    # "podcasts":Z
    .end local v16    # "isimage":Z
    .end local v17    # "isvideo":Z
    .end local v18    # "lowpath":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 722
    .local v13, "e":Landroid/os/RemoteException;
    const-string v3, "MediaScanner"

    const-string v10, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v3, v10, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method public getGenreName(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "genreTagValue"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/16 v10, 0xff

    const/16 v9, 0x29

    .line 825
    if-nez p1, :cond_1

    .line 874
    :cond_0
    :goto_0
    return-object v7

    .line 828
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 830
    .local v4, "length":I
    if-lez v4, :cond_9

    .line 831
    const/4 v6, 0x0

    .line 832
    .local v6, "parenthesized":Z
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 833
    .local v5, "number":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 834
    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 835
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 836
    .local v0, "c":C
    if-nez v3, :cond_2

    const/16 v8, 0x28

    if-ne v0, v8, :cond_2

    .line 837
    const/4 v6, 0x1

    .line 834
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 838
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 839
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 844
    .end local v0    # "c":C
    :cond_3
    if-ge v3, v4, :cond_6

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 845
    .local v1, "charAfterNumber":C
    :goto_3
    if-eqz v6, :cond_4

    if-eq v1, v9, :cond_5

    :cond_4
    if-nez v6, :cond_9

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 848
    :cond_5
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v2

    .line 849
    .local v2, "genreIndex":S
    if-ltz v2, :cond_9

    .line 850
    # getter for: Lcom/oppo/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;
    invoke-static {}, Lcom/oppo/media/MediaScanner;->access$1700()[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-ge v2, v8, :cond_7

    .line 851
    # getter for: Lcom/oppo/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;
    invoke-static {}, Lcom/oppo/media/MediaScanner;->access$1700()[Ljava/lang/String;

    move-result-object v8

    aget-object v7, v8, v2

    goto :goto_0

    .line 844
    .end local v1    # "charAfterNumber":C
    .end local v2    # "genreIndex":S
    :cond_6
    const/16 v1, 0x20

    goto :goto_3

    .line 852
    .restart local v1    # "charAfterNumber":C
    .restart local v2    # "genreIndex":S
    :cond_7
    if-eq v2, v10, :cond_0

    .line 854
    if-ge v2, v10, :cond_a

    add-int/lit8 v8, v3, 0x1

    if-ge v8, v4, :cond_a

    .line 857
    if-eqz v6, :cond_8

    if-ne v1, v9, :cond_8

    .line 858
    add-int/lit8 v3, v3, 0x1

    .line 860
    :cond_8
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 861
    .local v7, "ret":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    .end local v1    # "charAfterNumber":C
    .end local v2    # "genreIndex":S
    .end local v3    # "i":I
    .end local v5    # "number":Ljava/lang/StringBuffer;
    .end local v6    # "parenthesized":Z
    .end local v7    # "ret":Ljava/lang/String;
    :cond_9
    :goto_4
    move-object v7, p1

    .line 874
    goto :goto_0

    .line 866
    .restart local v1    # "charAfterNumber":C
    .restart local v2    # "genreIndex":S
    .restart local v3    # "i":I
    .restart local v5    # "number":Ljava/lang/StringBuffer;
    .restart local v6    # "parenthesized":Z
    :cond_a
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 869
    .end local v2    # "genreIndex":S
    :catch_0
    move-exception v8

    goto :goto_4
.end method

.method public handleStringTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 748
    const-string v3, "title"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "title;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 752
    :cond_0
    iput-object p2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 793
    :cond_1
    :goto_0
    return-void

    .line 753
    :cond_2
    const-string v3, "artist"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "artist;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 754
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    goto :goto_0

    .line 755
    :cond_4
    const-string v3, "albumartist"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "albumartist;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "band"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "band;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 757
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    goto :goto_0

    .line 758
    :cond_6
    const-string v3, "album"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "album;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 759
    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    goto :goto_0

    .line 760
    :cond_8
    const-string v3, "composer"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "composer;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 761
    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    goto :goto_0

    .line 762
    :cond_a
    iget-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mProcessGenres:Z
    invoke-static {v3}, Lcom/oppo/media/MediaScanner;->access$1600(Lcom/oppo/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "genre"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "genre;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 764
    :cond_b
    invoke-virtual {p0, p2}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    goto/16 :goto_0

    .line 765
    :cond_c
    const-string v3, "year"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "year;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 766
    :cond_d
    invoke-direct {p0, p2, v2, v2}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mYear:I

    goto/16 :goto_0

    .line 767
    :cond_e
    const-string v3, "tracknumber"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "tracknumber;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 770
    :cond_f
    invoke-direct {p0, p2, v2, v2}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    .line 771
    .local v0, "num":I
    iget v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    div-int/lit16 v1, v1, 0x3e8

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v1, v0

    iput v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    goto/16 :goto_0

    .line 772
    .end local v0    # "num":I
    :cond_10
    const-string v3, "discnumber"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "set"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "set;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 776
    :cond_11
    invoke-direct {p0, p2, v2, v2}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    .line 777
    .restart local v0    # "num":I
    mul-int/lit16 v1, v0, 0x3e8

    iget v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    rem-int/lit16 v2, v2, 0x3e8

    add-int/2addr v1, v2

    iput v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    goto/16 :goto_0

    .line 778
    .end local v0    # "num":I
    :cond_12
    const-string v3, "duration"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 779
    invoke-direct {p0, p2, v2, v2}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    goto/16 :goto_0

    .line 780
    :cond_13
    const-string v3, "writer"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string v3, "writer;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 781
    :cond_14
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    goto/16 :goto_0

    .line 782
    :cond_15
    const-string v3, "compilation"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 783
    invoke-direct {p0, p2, v2, v2}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    goto/16 :goto_0

    .line 784
    :cond_16
    const-string v3, "isdrm"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 785
    invoke-direct {p0, p2, v2, v2}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_17

    :goto_1
    iput-boolean v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    goto/16 :goto_0

    :cond_17
    move v1, v2

    goto :goto_1

    .line 786
    :cond_18
    const-string v1, "width"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 787
    invoke-direct {p0, p2, v2, v2}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    goto/16 :goto_0

    .line 788
    :cond_19
    const-string v1, "height"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 789
    invoke-direct {p0, p2, v2, v2}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    goto/16 :goto_0
.end method

.method public scanFile(Ljava/lang/String;JJZZ)V
    .locals 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "lastModified"    # J
    .param p4, "fileSize"    # J
    .param p6, "isDirectory"    # Z
    .param p7, "noMedia"    # Z

    .prologue
    .line 636
    # getter for: Lcom/oppo/media/MediaScanner;->LOG:Z
    invoke-static {}, Lcom/oppo/media/MediaScanner;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 641
    .local v10, "beginTime":J
    const/4 v2, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;

    .line 644
    # getter for: Lcom/oppo/media/MediaScanner;->LOG:Z
    invoke-static {}, Lcom/oppo/media/MediaScanner;->access$500()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 648
    :cond_1
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 890
    const-string v0, "audio/mp4"

    iget-object v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 929
    :cond_0
    :goto_0
    return-void

    .line 900
    :cond_1
    const-string v0, "video/x-flv"

    iget-object v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 913
    :cond_2
    iput-object p1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 921
    const-string v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 922
    const/16 v0, 0x15

    iput v0, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    goto :goto_0

    .line 923
    :cond_3
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 924
    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    goto :goto_0

    .line 926
    :cond_4
    invoke-static {p1}, Lcom/oppo/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    goto :goto_0
.end method
