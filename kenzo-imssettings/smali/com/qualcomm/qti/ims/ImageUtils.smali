.class public Lcom/qualcomm/qti/ims/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# static fields
.field private static final DOWNLOAD_DOCUMENT:Ljava/lang/String; = "com.android.providers.downloads.documents"

.field private static final MEDIA_DOCUMENT:Ljava/lang/String; = "com.android.providers.media.documents"

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string/jumbo v0, "ImageUtils"

    sput-object v0, Lcom/qualcomm/qti/ims/ImageUtils;->TAG:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDownloadDocumentFilePath(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 61
    const-string/jumbo v0, "_data"

    .line 62
    .local v0, "column":Ljava/lang/String;
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "id":Ljava/lang/String;
    const-string/jumbo v3, "content://downloads/public_downloads"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 64
    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 67
    .local v1, "contentUri":Landroid/net/Uri;
    const-string/jumbo v3, "_data"

    invoke-static {p1, v1, v6, v6, v3}, Lcom/qualcomm/qti/ims/ImageUtils;->getFilePathFromDb(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static getFilePath(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codeaurora/ims/QtiImsUnsupportedImageFormatException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 106
    const-string/jumbo v1, "_data"

    invoke-static {p1, p0, v2, v2, v1}, Lcom/qualcomm/qti/ims/ImageUtils;->getFilePathFromDb(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "filePath":Ljava/lang/String;
    invoke-static {v0}, Lcom/qualcomm/qti/ims/ImageUtils;->isSupportedFileFormat(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    return-object v0

    .line 112
    :cond_0
    sget-object v1, Lcom/qualcomm/qti/ims/ImageUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getFilePath unsupported file = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v1, Lorg/codeaurora/ims/QtiImsUnsupportedImageFormatException;

    const-string/jumbo v2, "unsupported image format"

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/QtiImsUnsupportedImageFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getFilePathFromDb(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "column"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 39
    const/4 v7, 0x0

    .line 42
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    .line 43
    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 42
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 44
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    invoke-interface {v7, p4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 46
    .local v6, "column_index":I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 51
    if-eqz v7, :cond_0

    .line 52
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 46
    :cond_0
    return-object v0

    .line 51
    .end local v6    # "column_index":I
    :cond_1
    if-eqz v7, :cond_2

    .line 52
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 55
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_0
    return-object v9

    .line 48
    :catch_0
    move-exception v8

    .line 49
    .local v8, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_1
    sget-object v0, Lcom/qualcomm/qti/ims/ImageUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "column doesn\'t exist ex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    if-eqz v7, :cond_2

    .line 52
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 50
    .end local v8    # "ex":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v0

    .line 51
    if-eqz v7, :cond_3

    .line 52
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 50
    :cond_3
    throw v0
.end method

.method public static getFilePathFromUri(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codeaurora/ims/QtiImsUnsupportedImageFormatException;
        }
    .end annotation

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "filePath":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 122
    sget-object v1, Lcom/qualcomm/qti/ims/ImageUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getFilePathFromUri uri is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-object v0

    .line 126
    :cond_0
    invoke-static {p0}, Lcom/qualcomm/qti/ims/ImageUtils;->isMediaDocument(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    invoke-static {p0, p1}, Lcom/qualcomm/qti/ims/ImageUtils;->getMediaDocumentFilePath(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "filePath":Ljava/lang/String;
    :goto_0
    sget-object v1, Lcom/qualcomm/qti/ims/ImageUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getFilePathFromUri filePath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-object v0

    .line 129
    .local v0, "filePath":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/qualcomm/qti/ims/ImageUtils;->isDownloadDocument(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 131
    invoke-static {p0, p1}, Lcom/qualcomm/qti/ims/ImageUtils;->getDownloadDocumentFilePath(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .local v0, "filePath":Ljava/lang/String;
    goto :goto_0

    .line 134
    .local v0, "filePath":Ljava/lang/String;
    :cond_2
    invoke-static {p0, p1}, Lcom/qualcomm/qti/ims/ImageUtils;->getFilePath(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .local v0, "filePath":Ljava/lang/String;
    goto :goto_0
.end method

.method private static getMediaDocumentFilePath(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;
    .locals 13
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 73
    const-string/jumbo v0, "image"

    .line 74
    .local v0, "IMAGE":Ljava/lang/String;
    const-string/jumbo v1, "_data"

    .line 75
    .local v1, "column":Ljava/lang/String;
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, "docId":Ljava/lang/String;
    sget-object v7, Lcom/qualcomm/qti/ims/ImageUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "docId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    if-nez v3, :cond_0

    .line 79
    return-object v10

    .line 83
    :cond_0
    const-string/jumbo v7, ":"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 84
    .local v6, "split":[Ljava/lang/String;
    if-eqz v6, :cond_1

    const-string/jumbo v7, "image"

    aget-object v8, v6, v11

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_1

    .line 85
    sget-object v7, Lcom/qualcomm/qti/ims/ImageUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "getMediaDocumentFilePath not an image file"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-object v10

    .line 90
    :cond_1
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 91
    .local v2, "contentUri":Landroid/net/Uri;
    const-string/jumbo v4, "_id=?"

    .line 92
    .local v4, "selection":Ljava/lang/String;
    new-array v5, v12, [Ljava/lang/String;

    .line 93
    aget-object v7, v6, v12

    aput-object v7, v5, v11

    .line 96
    .local v5, "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v7, "_id=?"

    const-string/jumbo v8, "_data"

    invoke-static {p1, v2, v7, v5, v8}, Lcom/qualcomm/qti/ims/ImageUtils;->getFilePathFromDb(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private static isDownloadDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 34
    const-string/jumbo v0, "com.android.providers.downloads.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isMediaDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 30
    const-string/jumbo v0, "com.android.providers.media.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isSupportedFileFormat(Ljava/lang/String;)Z
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 100
    if-eqz p0, :cond_1

    const-string/jumbo v0, ".jpg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ".png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    const-string/jumbo v0, ".jpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 100
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
