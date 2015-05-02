.class public Loppo/content/res/OppoFontUtils;
.super Ljava/lang/Object;
.source "OppoFontUtils.java"


# static fields
.field private static final CHMOD_COMMAND:Ljava/lang/String; = "chmod 777 "

.field private static final ColorOS_FONT_DIRECTORY:Ljava/lang/String; = "/data/system/font/"

.field private static final ColorOS_FONT_FAMILY_NAME:Ljava/lang/String; = "coloros"

.field private static final ColorOS_FONT_NAME:Ljava/lang/String; = "ColorOS-Regular.ttf"

.field private static final DEBUG:Z = false

.field private static final INVALID_FLIP_FONT:I = -0x1

.field private static final LOC_DIRECTORY:Ljava/lang/String; = "/data/data/com.android.settings/app_fonts"

.field private static final TAG:Ljava/lang/String; = "OppoFontUtils"

.field private static isChecked:Z

.field public static isFlipFontUsed:Z

.field public static isNewFontFrameUsed:Z

.field private static sCurrentTypefaces:[Landroid/graphics/Typeface;

.field private static sFlipFont:I

.field private static sFontName:Ljava/lang/String;

.field private static sLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    sput-boolean v1, Loppo/content/res/OppoFontUtils;->isFlipFontUsed:Z

    .line 65
    sput-boolean v1, Loppo/content/res/OppoFontUtils;->isNewFontFrameUsed:Z

    .line 72
    const/4 v0, -0x1

    sput v0, Loppo/content/res/OppoFontUtils;->sFlipFont:I

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Loppo/content/res/OppoFontUtils;->sLock:Ljava/lang/Object;

    .line 74
    sput-boolean v1, Loppo/content/res/OppoFontUtils;->isChecked:Z

    .line 78
    const/4 v0, 0x1

    sput-boolean v0, Loppo/content/res/OppoFontUtils;->isNewFontFrameUsed:Z

    .line 79
    invoke-static {}, Loppo/content/res/OppoFontUtils;->initFont()V

    .line 81
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SetFlipFont(Landroid/content/res/Configuration;)V
    .locals 2
    .param p0, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    .line 84
    sget v0, Loppo/content/res/OppoFontUtils;->sFlipFont:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget v0, Loppo/content/res/OppoFontUtils;->sFlipFont:I

    iget-object v1, p0, Landroid/content/res/Configuration;->mOppoExtraConfiguration:Loppo/content/res/OppoExtraConfiguration;

    iget v1, v1, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    if-eq v0, v1, :cond_1

    .line 85
    :cond_0
    invoke-static {}, Loppo/content/res/OppoFontUtils;->freeCaches()V

    .line 86
    const/4 v0, 0x0

    sput-boolean v0, Loppo/content/res/OppoFontUtils;->isChecked:Z

    .line 87
    invoke-static {}, Loppo/content/res/OppoFontUtils;->checkFontFile()Z

    .line 88
    invoke-static {}, Loppo/content/res/OppoFontUtils;->initFont()V

    .line 89
    iget-object v0, p0, Landroid/content/res/Configuration;->mOppoExtraConfiguration:Loppo/content/res/OppoExtraConfiguration;

    iget v0, v0, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    sput v0, Loppo/content/res/OppoFontUtils;->sFlipFont:I

    .line 91
    :cond_1
    return-void
.end method

.method static changeFilePermission(Ljava/lang/String;)V
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 261
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod 777 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "cmd":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 263
    .local v1, "process":Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 264
    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I

    move-result v2

    if-eqz v2, :cond_0

    .line 265
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Cannot chmod"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 267
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v1    # "process":Ljava/lang/Process;
    :catch_0
    move-exception v2

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 269
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private static checkFontCopied(Ljava/io/File;Ljava/lang/String;J)Z
    .locals 5
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "destination"    # Ljava/lang/String;
    .param p2, "exceptedLen"    # J

    .prologue
    .line 328
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 329
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 331
    .local v1, "length":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    cmp-long v3, v1, p2

    if-eqz v3, :cond_1

    .line 332
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 333
    const/4 v3, 0x0

    .line 336
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static checkFontFile()Z
    .locals 16

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "SystemFont":Ljava/lang/String;
    const/4 v5, 0x0

    .line 127
    .local v5, "fontOldFile":Ljava/io/File;
    const/4 v9, 0x0

    .line 129
    .local v9, "tmp":[Ljava/lang/String;
    sget-object v14, Loppo/content/res/OppoFontUtils;->sLock:Ljava/lang/Object;

    monitor-enter v14

    .line 130
    :try_start_0
    sget-boolean v15, Loppo/content/res/OppoFontUtils;->isChecked:Z

    if-eqz v15, :cond_0

    .line 131
    monitor-exit v14

    .line 182
    :goto_0
    return v12

    .line 133
    :cond_0
    const-string v15, "persist.sys.flipfontpath"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    const-string v15, "/data/system/font"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 135
    monitor-exit v14

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v12

    :goto_1
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 137
    :cond_1
    :try_start_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    .end local v5    # "fontOldFile":Ljava/io/File;
    .local v6, "fontOldFile":Ljava/io/File;
    :try_start_2
    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v9

    .line 139
    if-eqz v9, :cond_2

    array-length v15, v9

    if-lez v15, :cond_2

    .line 140
    const/4 v15, 0x1

    sput-boolean v15, Loppo/content/res/OppoFontUtils;->isChecked:Z

    .line 143
    :cond_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 145
    if-eqz v9, :cond_5

    array-length v14, v9

    if-lez v14, :cond_5

    .line 147
    const/4 v8, 0x1

    .line 148
    .local v8, "success":Z
    invoke-static {}, Loppo/content/res/OppoFontUtils;->createFontDirectory()Ljava/io/File;

    move-result-object v4

    .line 152
    .local v4, "fontDir":Ljava/io/File;
    :try_start_3
    new-instance v2, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/DroidSans-Bold.ttf"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v2, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    .local v2, "fin1":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_3

    move-object v5, v6

    .line 154
    .end local v6    # "fontOldFile":Ljava/io/File;
    .restart local v5    # "fontOldFile":Ljava/io/File;
    goto :goto_0

    .line 156
    .end local v5    # "fontOldFile":Ljava/io/File;
    .restart local v6    # "fontOldFile":Ljava/io/File;
    :cond_3
    new-instance v3, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/ColorOS.ttf"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v3, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    .local v3, "fin2":Ljava/io/File;
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v8

    .line 160
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 162
    .local v7, "in":Ljava/io/FileInputStream;
    invoke-static {v7}, Loppo/content/res/OppoFontUtils;->getFontFileLength(Ljava/io/InputStream;)J

    move-result-wide v10

    .line 163
    .local v10, "totalbytes":J
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 165
    new-instance v7, Ljava/io/FileInputStream;

    .end local v7    # "in":Ljava/io/FileInputStream;
    invoke-direct {v7, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 167
    .restart local v7    # "in":Ljava/io/FileInputStream;
    const-string v14, "ColorOS-Regular.ttf"

    invoke-static {v10, v11, v4, v7, v14}, Loppo/content/res/OppoFontUtils;->copyFontFile(JLjava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v8

    .line 170
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 172
    if-nez v8, :cond_4

    move-object v5, v6

    .line 173
    .end local v6    # "fontOldFile":Ljava/io/File;
    .restart local v5    # "fontOldFile":Ljava/io/File;
    goto/16 :goto_0

    .line 175
    .end local v5    # "fontOldFile":Ljava/io/File;
    .restart local v6    # "fontOldFile":Ljava/io/File;
    :cond_4
    invoke-static {v6}, Loppo/content/res/OppoFontUtils;->deleteFolder(Ljava/io/File;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v5, v6

    .end local v6    # "fontOldFile":Ljava/io/File;
    .restart local v5    # "fontOldFile":Ljava/io/File;
    move v12, v13

    .line 177
    goto/16 :goto_0

    .line 178
    .end local v2    # "fin1":Ljava/io/File;
    .end local v3    # "fin2":Ljava/io/File;
    .end local v5    # "fontOldFile":Ljava/io/File;
    .end local v7    # "in":Ljava/io/FileInputStream;
    .end local v10    # "totalbytes":J
    .restart local v6    # "fontOldFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 179
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v4    # "fontDir":Ljava/io/File;
    .end local v8    # "success":Z
    :cond_5
    move-object v5, v6

    .line 182
    .end local v6    # "fontOldFile":Ljava/io/File;
    .restart local v5    # "fontOldFile":Ljava/io/File;
    goto/16 :goto_0

    .line 143
    .end local v5    # "fontOldFile":Ljava/io/File;
    .restart local v6    # "fontOldFile":Ljava/io/File;
    :catchall_1
    move-exception v12

    move-object v5, v6

    .end local v6    # "fontOldFile":Ljava/io/File;
    .restart local v5    # "fontOldFile":Ljava/io/File;
    goto/16 :goto_1
.end method

.method public static copyFontFile(JLjava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 13
    .param p0, "totalbytes"    # J
    .param p2, "directory"    # Ljava/io/File;
    .param p3, "inputStream"    # Ljava/io/InputStream;
    .param p4, "destination"    # Ljava/lang/String;

    .prologue
    .line 277
    move-object v7, p2

    .line 278
    .local v7, "myDirectory":Ljava/io/File;
    const-string v1, ""

    .line 279
    .local v1, "absolutePath":Ljava/lang/String;
    const/4 v5, 0x0

    .line 281
    .local v5, "fOut":Ljava/io/FileOutputStream;
    const/4 v10, 0x1

    .line 283
    .local v10, "success":Z
    :try_start_0
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p4

    invoke-direct {v3, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 284
    .local v3, "dest":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 285
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 287
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 288
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 290
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    .end local v5    # "fOut":Ljava/io/FileOutputStream;
    .local v6, "fOut":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v8, Ljava/io/BufferedOutputStream;

    invoke-direct {v8, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 293
    .local v8, "os":Ljava/io/BufferedOutputStream;
    const/16 v11, 0x400

    new-array v2, v11, [B

    .line 295
    .local v2, "b":[B
    const/4 v9, 0x0

    .line 296
    .local v9, "read":I
    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v11, -0x1

    if-le v9, v11, :cond_3

    .line 297
    const/4 v11, 0x0

    invoke-virtual {v8, v2, v11, v9}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 302
    .end local v2    # "b":[B
    .end local v8    # "os":Ljava/io/BufferedOutputStream;
    .end local v9    # "read":I
    :catch_0
    move-exception v4

    move-object v5, v6

    .line 303
    .end local v3    # "dest":Ljava/io/File;
    .end local v6    # "fOut":Ljava/io/FileOutputStream;
    .local v4, "ex":Ljava/lang/Exception;
    .restart local v5    # "fOut":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 306
    if-eqz p3, :cond_1

    .line 307
    :try_start_3
    invoke-virtual/range {p3 .. p3}, Ljava/io/InputStream;->close()V

    .line 310
    :cond_1
    if-eqz v5, :cond_2

    .line 311
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 317
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_2
    :goto_2
    invoke-static {v1}, Loppo/content/res/OppoFontUtils;->changeFilePermission(Ljava/lang/String;)V

    .line 319
    move-object/from16 v0, p4

    invoke-static {v7, v0, p0, p1}, Loppo/content/res/OppoFontUtils;->checkFontCopied(Ljava/io/File;Ljava/lang/String;J)Z

    move-result v10

    .line 323
    return v10

    .line 299
    .end local v5    # "fOut":Ljava/io/FileOutputStream;
    .restart local v2    # "b":[B
    .restart local v3    # "dest":Ljava/io/File;
    .restart local v6    # "fOut":Ljava/io/FileOutputStream;
    .restart local v8    # "os":Ljava/io/BufferedOutputStream;
    .restart local v9    # "read":I
    :cond_3
    :try_start_4
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->flush()V

    .line 300
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 301
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 306
    if-eqz p3, :cond_4

    .line 307
    :try_start_5
    invoke-virtual/range {p3 .. p3}, Ljava/io/InputStream;->close()V

    .line 310
    :cond_4
    if-eqz v6, :cond_5

    .line 311
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_5
    move-object v5, v6

    .line 314
    .end local v6    # "fOut":Ljava/io/FileOutputStream;
    .restart local v5    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 313
    .end local v5    # "fOut":Ljava/io/FileOutputStream;
    .restart local v6    # "fOut":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v11

    move-object v5, v6

    .line 315
    .end local v6    # "fOut":Ljava/io/FileOutputStream;
    .restart local v5    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 305
    .end local v2    # "b":[B
    .end local v3    # "dest":Ljava/io/File;
    .end local v8    # "os":Ljava/io/BufferedOutputStream;
    .end local v9    # "read":I
    :catchall_0
    move-exception v11

    .line 306
    :goto_3
    if-eqz p3, :cond_6

    .line 307
    :try_start_6
    invoke-virtual/range {p3 .. p3}, Ljava/io/InputStream;->close()V

    .line 310
    :cond_6
    if-eqz v5, :cond_7

    .line 311
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 314
    :cond_7
    :goto_4
    throw v11

    .line 313
    :catch_2
    move-exception v12

    goto :goto_4

    .line 305
    .end local v5    # "fOut":Ljava/io/FileOutputStream;
    .restart local v3    # "dest":Ljava/io/File;
    .restart local v6    # "fOut":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v11

    move-object v5, v6

    .end local v6    # "fOut":Ljava/io/FileOutputStream;
    .restart local v5    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 313
    .end local v3    # "dest":Ljava/io/File;
    .restart local v4    # "ex":Ljava/lang/Exception;
    :catch_3
    move-exception v11

    goto :goto_2

    .line 302
    .end local v4    # "ex":Ljava/lang/Exception;
    :catch_4
    move-exception v4

    goto :goto_1
.end method

.method public static createFontDirectory()Ljava/io/File;
    .locals 2

    .prologue
    .line 248
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/font/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 249
    .local v0, "fontFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 251
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Loppo/content/res/OppoFontUtils;->changeFilePermission(Ljava/lang/String;)V

    .line 253
    :cond_0
    return-object v0
.end method

.method private static deleteFolder(Ljava/io/File;)Z
    .locals 4
    .param p0, "FontDir"    # Ljava/io/File;

    .prologue
    .line 344
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "files":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 346
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 347
    new-instance v2, Ljava/io/File;

    aget-object v3, v0, v1

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 346
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 350
    .end local v1    # "i":I
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public static flipTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 9
    .param p0, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 94
    move-object v6, p0

    .line 96
    .local v6, "tf":Landroid/graphics/Typeface;
    invoke-static {}, Loppo/content/res/OppoFontUtils;->checkFontFile()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 98
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 99
    .local v0, "am":Landroid/app/IActivityManager;
    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 101
    .local v1, "config":Landroid/content/res/Configuration;
    new-instance v4, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v4, v7, v8}, Ljava/util/Random;-><init>(J)V

    .line 102
    .local v4, "randomizer":Ljava/util/Random;
    const/4 v3, 0x0

    .line 103
    .local v3, "min":I
    const/16 v2, 0x2710

    .line 105
    .local v2, "max":I
    iget-object v7, v1, Landroid/content/res/Configuration;->mOppoExtraConfiguration:Loppo/content/res/OppoExtraConfiguration;

    const/16 v8, 0x2711

    invoke-virtual {v4, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    add-int/2addr v8, v3

    iput v8, v7, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    .line 107
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v2    # "max":I
    .end local v3    # "min":I
    .end local v4    # "randomizer":Ljava/util/Random;
    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, v7}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v7}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    sget-object v7, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {p0, v7}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    sget-boolean v7, Landroid/graphics/Typeface;->isLikeDefault:Z

    if-eqz v7, :cond_2

    .line 116
    :cond_1
    if-nez p0, :cond_3

    const/4 v5, 0x0

    .line 117
    .local v5, "style":I
    :goto_1
    sget-object v7, Loppo/content/res/OppoFontUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    aget-object v6, v7, v5

    .line 120
    .end local v5    # "style":I
    :cond_2
    return-object v6

    .line 116
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v5

    goto :goto_1

    .line 109
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method private static freeCaches()V
    .locals 0

    .prologue
    .line 224
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 225
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    .line 226
    invoke-static {}, Landroid/view/OppoExtraGLES20Canvas;->freeCaches()V

    .line 227
    return-void
.end method

.method public static getFontFileLength(Ljava/io/InputStream;)J
    .locals 7
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 230
    const-wide/16 v3, 0x0

    .line 232
    .local v3, "totalbytes":J
    const/16 v5, 0x400

    :try_start_0
    new-array v0, v5, [B

    .line 233
    .local v0, "b":[B
    const/4 v2, 0x0

    .line 234
    .local v2, "read":I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v5, -0x1

    if-le v2, v5, :cond_0

    .line 235
    int-to-long v5, v2

    add-long/2addr v3, v5

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .end local v0    # "b":[B
    .end local v2    # "read":I
    :goto_1
    return-wide v3

    .line 238
    :catch_0
    move-exception v1

    .line 239
    .local v1, "ex":Ljava/lang/Exception;
    const-wide/16 v3, 0x0

    goto :goto_1
.end method

.method private static initFont()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 186
    sget-object v3, Loppo/content/res/OppoFontUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    if-nez v3, :cond_0

    .line 187
    const/4 v3, 0x4

    new-array v3, v3, [Landroid/graphics/Typeface;

    sput-object v3, Loppo/content/res/OppoFontUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    .line 190
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/system/font/ColorOS-Regular.ttf"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    .local v1, "fontFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 193
    :try_start_0
    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 194
    .local v2, "tf":Landroid/graphics/Typeface;
    const/4 v3, 0x1

    sput-boolean v3, Loppo/content/res/OppoFontUtils;->isFlipFontUsed:Z

    .line 197
    sget-object v3, Loppo/content/res/OppoFontUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    aput-object v5, v3, v4

    .line 198
    sget-object v3, Loppo/content/res/OppoFontUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v2, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    aput-object v5, v3, v4

    .line 199
    sget-object v3, Loppo/content/res/OppoFontUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    const/4 v4, 0x2

    const/4 v5, 0x2

    invoke-static {v2, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    aput-object v5, v3, v4

    .line 200
    sget-object v3, Loppo/content/res/OppoFontUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    const/4 v4, 0x3

    const/4 v5, 0x3

    invoke-static {v2, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    aput-object v5, v3, v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .end local v2    # "tf":Landroid/graphics/Typeface;
    :goto_0
    sget-boolean v3, Loppo/content/res/OppoFontUtils;->isFlipFontUsed:Z

    if-nez v3, :cond_1

    .line 216
    sget-object v3, Loppo/content/res/OppoFontUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    const-string v4, "coloros"

    invoke-static {v4, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    aput-object v4, v3, v6

    .line 217
    sget-object v3, Loppo/content/res/OppoFontUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    const-string v4, "coloros"

    invoke-static {v4, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    aput-object v4, v3, v7

    .line 218
    sget-object v3, Loppo/content/res/OppoFontUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    const-string v4, "coloros"

    invoke-static {v4, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    aput-object v4, v3, v8

    .line 219
    sget-object v3, Loppo/content/res/OppoFontUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    const-string v4, "coloros"

    invoke-static {v4, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    aput-object v4, v3, v9

    .line 221
    :cond_1
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v3, "OppoFontUtils"

    const-string v4, "initFont() createFromFile fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    sput-boolean v6, Loppo/content/res/OppoFontUtils;->isFlipFontUsed:Z

    goto :goto_0

    .line 206
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_2
    sput-boolean v6, Loppo/content/res/OppoFontUtils;->isFlipFontUsed:Z

    goto :goto_0
.end method

.method public static isNewFontFrame()Z
    .locals 1

    .prologue
    .line 357
    sget-boolean v0, Loppo/content/res/OppoFontUtils;->isNewFontFrameUsed:Z

    return v0
.end method
