.class public Lcom/qualcomm/qti/ims/CameraUtil;
.super Ljava/lang/Object;
.source "CameraUtil.java"


# static fields
.field private static TAG:Ljava/lang/String; = null

.field private static final VIDEO_QUALITY_TABLE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Size;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final VIDEO_QUALITY_UNKNOWN:I = -0x1

.field private static sCameraUtil:Lcom/qualcomm/qti/ims/CameraUtil;


# instance fields
.field private mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private mFrontFacingCameraId:I

.field private mIsInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v3, 0x870

    const/16 v6, 0x438

    const/16 v5, 0x2d0

    const/16 v4, 0x1e0

    .line 26
    const-string/jumbo v0, "CameraUtil"

    sput-object v0, Lcom/qualcomm/qti/ims/CameraUtil;->TAG:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/qualcomm/qti/ims/CameraUtil;->VIDEO_QUALITY_TABLE:Ljava/util/HashMap;

    .line 45
    sget-object v0, Lcom/qualcomm/qti/ims/CameraUtil;->VIDEO_QUALITY_TABLE:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Size;

    const/16 v2, 0x1000

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    const/16 v2, 0x2711

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/qualcomm/qti/ims/CameraUtil;->VIDEO_QUALITY_TABLE:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Size;

    const/16 v2, 0xf00

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/qualcomm/qti/ims/CameraUtil;->VIDEO_QUALITY_TABLE:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Size;

    const/16 v2, 0xa00

    const/16 v3, 0x5a0

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    const/16 v2, 0x2717

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/qualcomm/qti/ims/CameraUtil;->VIDEO_QUALITY_TABLE:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Size;

    const/16 v2, 0x800

    invoke-direct {v1, v2, v6}, Landroid/util/Size;-><init>(II)V

    const/16 v2, 0x2718

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/qualcomm/qti/ims/CameraUtil;->VIDEO_QUALITY_TABLE:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Size;

    const/16 v2, 0x780

    invoke-direct {v1, v2, v6}, Landroid/util/Size;-><init>(II)V

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/qualcomm/qti/ims/CameraUtil;->VIDEO_QUALITY_TABLE:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Size;

    const/16 v2, 0x500

    invoke-direct {v1, v2, v5}, Landroid/util/Size;-><init>(II)V

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/qualcomm/qti/ims/CameraUtil;->VIDEO_QUALITY_TABLE:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v5, v4}, Landroid/util/Size;-><init>(II)V

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/qualcomm/qti/ims/CameraUtil;->VIDEO_QUALITY_TABLE:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Size;

    const/16 v2, 0x280

    invoke-direct {v1, v2, v4}, Landroid/util/Size;-><init>(II)V

    const/16 v2, 0x2710

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/qualcomm/qti/ims/CameraUtil;->VIDEO_QUALITY_TABLE:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Size;

    const/16 v2, 0x160

    const/16 v3, 0x120

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/qualcomm/qti/ims/CameraUtil;->VIDEO_QUALITY_TABLE:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Size;

    const/16 v2, 0x140

    const/16 v3, 0xf0

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/qualcomm/qti/ims/CameraUtil;->VIDEO_QUALITY_TABLE:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Size;

    const/16 v2, 0xb0

    const/16 v3, 0x90

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/qti/ims/CameraUtil;->mFrontFacingCameraId:I

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qti/ims/CameraUtil;->mIsInitialized:Z

    .line 62
    return-void
.end method

.method private getHighestSupportedVideoQuality(I)I
    .locals 6
    .param p1, "cameraId"    # I

    .prologue
    .line 93
    iget-object v4, p0, Lcom/qualcomm/qti/ims/CameraUtil;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 94
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 93
    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 95
    .local v1, "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    const-class v4, Landroid/media/MediaRecorder;

    invoke-virtual {v1, v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v2

    .line 96
    .local v2, "sizes":[Landroid/util/Size;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 97
    sget-object v4, Lcom/qualcomm/qti/ims/CameraUtil;->VIDEO_QUALITY_TABLE:Ljava/util/HashMap;

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 98
    sget-object v4, Lcom/qualcomm/qti/ims/CameraUtil;->VIDEO_QUALITY_TABLE:Ljava/util/HashMap;

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 99
    .local v3, "videoQuality":I
    invoke-static {p1, v3}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    return v3

    .line 96
    .end local v3    # "videoQuality":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_1
    const/4 v4, -0x1

    return v4
.end method

.method public static declared-synchronized getInstance()Lcom/qualcomm/qti/ims/CameraUtil;
    .locals 2

    .prologue
    const-class v1, Lcom/qualcomm/qti/ims/CameraUtil;

    monitor-enter v1

    .line 68
    :try_start_0
    sget-object v0, Lcom/qualcomm/qti/ims/CameraUtil;->sCameraUtil:Lcom/qualcomm/qti/ims/CameraUtil;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/qualcomm/qti/ims/CameraUtil;

    invoke-direct {v0}, Lcom/qualcomm/qti/ims/CameraUtil;-><init>()V

    sput-object v0, Lcom/qualcomm/qti/ims/CameraUtil;->sCameraUtil:Lcom/qualcomm/qti/ims/CameraUtil;

    .line 71
    :cond_0
    sget-object v0, Lcom/qualcomm/qti/ims/CameraUtil;->sCameraUtil:Lcom/qualcomm/qti/ims/CameraUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private maybeInitializeCameraList(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    iget-boolean v7, p0, Lcom/qualcomm/qti/ims/CameraUtil;->mIsInitialized:Z

    if-nez v7, :cond_0

    if-nez p1, :cond_1

    .line 116
    :cond_0
    return-void

    .line 120
    :cond_1
    :try_start_0
    const-string/jumbo v7, "camera"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .local v1, "cameraManager":Landroid/hardware/camera2/CameraManager;
    if-nez v1, :cond_2

    .line 126
    return-void

    .line 121
    .end local v1    # "cameraManager":Landroid/hardware/camera2/CameraManager;
    :catch_0
    move-exception v4

    .line 122
    .local v4, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/qualcomm/qti/ims/CameraUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Could not get camera service."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void

    .line 130
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "cameraManager":Landroid/hardware/camera2/CameraManager;
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "cameraIdList":[Ljava/lang/String;
    sget-object v7, Lcom/qualcomm/qti/ims/CameraUtil;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "cameraIdList is: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v0

    if-ge v6, v7, :cond_3

    .line 134
    aget-object v7, v0, v6

    invoke-virtual {v1, v7}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    .line 135
    .local v2, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    if-eqz v2, :cond_4

    .line 136
    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_4

    .line 138
    iput v6, p0, Lcom/qualcomm/qti/ims/CameraUtil;->mFrontFacingCameraId:I

    .line 139
    iput-object v2, p0, Lcom/qualcomm/qti/ims/CameraUtil;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 144
    .end local v2    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :cond_3
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/qualcomm/qti/ims/CameraUtil;->mIsInitialized:Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 152
    .end local v0    # "cameraIdList":[Ljava/lang/String;
    .end local v6    # "i":I
    :goto_1
    return-void

    .line 132
    .restart local v0    # "cameraIdList":[Ljava/lang/String;
    .restart local v2    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v6    # "i":I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 148
    .end local v0    # "cameraIdList":[Ljava/lang/String;
    .end local v2    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v6    # "i":I
    :catch_1
    move-exception v3

    .line 149
    .local v3, "e":Landroid/hardware/camera2/CameraAccessException;
    sget-object v7, Lcom/qualcomm/qti/ims/CameraUtil;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Could not access camera: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 145
    .end local v3    # "e":Landroid/hardware/camera2/CameraAccessException;
    :catch_2
    move-exception v5

    .line 146
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    sget-object v7, Lcom/qualcomm/qti/ims/CameraUtil;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Device id is unknown: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public isHighVideoQualitySupported(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 76
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/ims/CameraUtil;->maybeInitializeCameraList(Landroid/content/Context;)V

    .line 77
    iget v3, p0, Lcom/qualcomm/qti/ims/CameraUtil;->mFrontFacingCameraId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 78
    iget v3, p0, Lcom/qualcomm/qti/ims/CameraUtil;->mFrontFacingCameraId:I

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/ims/CameraUtil;->getHighestSupportedVideoQuality(I)I

    move-result v0

    .line 79
    .local v0, "quality":I
    sget-object v3, Lcom/qualcomm/qti/ims/CameraUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Highest supported video quality: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/16 v3, 0x2711

    if-eq v0, v3, :cond_0

    .line 81
    const/16 v3, 0x8

    if-ne v0, v3, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v1

    .line 82
    :cond_1
    const/16 v3, 0x2717

    if-eq v0, v3, :cond_0

    .line 83
    const/16 v3, 0x2718

    if-eq v0, v3, :cond_0

    .line 84
    const/4 v3, 0x6

    if-eq v0, v3, :cond_0

    .line 85
    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 87
    .end local v0    # "quality":I
    :cond_2
    sget-object v1, Lcom/qualcomm/qti/ims/CameraUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Front camera is not supported or some error occurred"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return v2
.end method
