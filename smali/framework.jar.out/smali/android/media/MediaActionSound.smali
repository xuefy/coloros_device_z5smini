.class public Landroid/media/MediaActionSound;
.super Ljava/lang/Object;
.source "MediaActionSound.java"


# static fields
.field public static final CAMERA_COUNTDOWN_FAST:I = 0x6

.field public static final CAMERA_COUNTDOWN_SLOW:I = 0x5

.field public static final FOCUS_COMPLETE:I = 0x1

.field private static final NUM_MEDIA_SOUND_STREAMS:I = 0x1

.field public static final SHUTTER_CLICK:I = 0x0

.field private static final SOUND_NOT_LOADED:I = -0x1

.field public static final START_VIDEO_RECORDING:I = 0x2

.field public static final STOP_VIDEO_RECORDING:I = 0x3

.field private static final SYSTEM_CAMERA_CLICK_SOUND:Ljava/lang/String; = "/system/media/audio/ui/camera_click.ogg"

.field private static final SYSTEM_CAMERA_COUNTDOWN_FAST_SOUND:Ljava/lang/String; = "/system/media/audio/ui/cameraCountdownFast.ogg"

.field private static final SYSTEM_CAMERA_COUNTDOWN_SLOW_SOUND:Ljava/lang/String; = "/system/media/audio/ui/cameraCountdownSlow.ogg"

.field private static final SYSTEM_CAMERA_FOCUS_SOUND:Ljava/lang/String; = "/system/media/audio/ui/camera_focus.ogg"

.field private static final SYSTEM_VIDEO_RECORD_SOUND:Ljava/lang/String; = "/system/media/audio/ui/VideoRecord.ogg"

.field private static final SYSTEM_ZOOM_SOUND:Ljava/lang/String; = "/system/media/audio/ui/ZoomSound.ogg"

.field private static final TAG:Ljava/lang/String; = "MediaActionSound"

.field private static final THEME_CAMERA_CLICK_SOUND:Ljava/lang/String; = "/data/system/theme/current/audioeffect/camera_click.ogg"

.field private static final THEME_CAMERA_COUNTDOWN_FAST_SOUND:Ljava/lang/String; = "/data/system/theme/current/audioeffect/cameraCountdownFast.ogg"

.field private static final THEME_CAMERA_COUNTDOWN_SLOW_SOUND:Ljava/lang/String; = "/data/system/theme/current/audioeffect/cameraCountdownSlow.ogg"

.field private static final THEME_CAMERA_FOCUS_SOUND:Ljava/lang/String; = "/data/system/theme/current/audioeffect/camera_focus.ogg"

.field private static final THEME_VIDEO_RECORD_SOUND:Ljava/lang/String; = "/data/system/theme/current/audioeffect/VideoRecord.ogg"

.field private static final THEME_ZOOM_SOUND:Ljava/lang/String; = "/data/system/theme/current/audioeffect/ZoomSound.ogg"

.field public static final ZOOM_ACTION_SOUND:I = 0x4


# instance fields
.field private SOUND_FILES:[Ljava/lang/String;

.field private mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

.field private mSoundIdToPlay:I

.field private mSoundIds:[I

.field private mSoundPool:Landroid/media/SoundPool;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 157
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "/system/media/audio/ui/camera_click.ogg"

    aput-object v2, v1, v5

    const-string v2, "/system/media/audio/ui/camera_focus.ogg"

    aput-object v2, v1, v6

    const/4 v2, 0x2

    const-string v3, "/system/media/audio/ui/VideoRecord.ogg"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "/system/media/audio/ui/VideoRecord.ogg"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "/system/media/audio/ui/ZoomSound.ogg"

    aput-object v3, v1, v2

    const-string v2, "/system/media/audio/ui/cameraCountdownSlow.ogg"

    aput-object v2, v1, v7

    const/4 v2, 0x6

    const-string v3, "/system/media/audio/ui/cameraCountdownFast.ogg"

    aput-object v3, v1, v2

    iput-object v1, p0, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    .line 234
    new-instance v1, Landroid/media/MediaActionSound$1;

    invoke-direct {v1, p0}, Landroid/media/MediaActionSound$1;-><init>(Landroid/media/MediaActionSound;)V

    iput-object v1, p0, Landroid/media/MediaActionSound;->mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    .line 158
    invoke-direct {p0}, Landroid/media/MediaActionSound;->initSoundFiles()V

    .line 159
    new-instance v1, Landroid/media/SoundPool;

    invoke-direct {v1, v6, v7, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    .line 161
    iget-object v1, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Landroid/media/MediaActionSound;->mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 162
    iget-object v1, p0, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/media/MediaActionSound;->mSoundIds:[I

    .line 163
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Landroid/media/MediaActionSound;->mSoundIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 164
    iget-object v1, p0, Landroid/media/MediaActionSound;->mSoundIds:[I

    aput v4, v1, v0

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_0
    iput v4, p0, Landroid/media/MediaActionSound;->mSoundIdToPlay:I

    .line 167
    return-void
.end method

.method static synthetic access$000(Landroid/media/MediaActionSound;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Landroid/media/MediaActionSound;->mSoundIdToPlay:I

    return v0
.end method

.method static synthetic access$002(Landroid/media/MediaActionSound;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Landroid/media/MediaActionSound;->mSoundIdToPlay:I

    return p1
.end method

.method private initSoundFiles()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 81
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/theme/current/audioeffect/camera_click.ogg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "/data/system/theme/current/audioeffect/camera_click.ogg"

    aput-object v3, v1, v2

    .line 86
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    const-string v1, "/data/system/theme/current/audioeffect/camera_focus.ogg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    iget-object v1, p0, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    const/4 v2, 0x1

    const-string v3, "/data/system/theme/current/audioeffect/camera_focus.ogg"

    aput-object v3, v1, v2

    .line 91
    :cond_1
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    const-string v1, "/data/system/theme/current/audioeffect/VideoRecord.ogg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 93
    iget-object v1, p0, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    const/4 v2, 0x2

    const-string v3, "/data/system/theme/current/audioeffect/VideoRecord.ogg"

    aput-object v3, v1, v2

    .line 94
    iget-object v1, p0, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    const/4 v2, 0x3

    const-string v3, "/data/system/theme/current/audioeffect/VideoRecord.ogg"

    aput-object v3, v1, v2

    .line 97
    :cond_2
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    const-string v1, "/data/system/theme/current/audioeffect/ZoomSound.ogg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 99
    iget-object v1, p0, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    const/4 v2, 0x4

    const-string v3, "/data/system/theme/current/audioeffect/ZoomSound.ogg"

    aput-object v3, v1, v2

    .line 102
    :cond_3
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    const-string v1, "/data/system/theme/current/audioeffect/cameraCountdownSlow.ogg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 104
    iget-object v1, p0, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    const-string v2, "/data/system/theme/current/audioeffect/cameraCountdownSlow.ogg"

    aput-object v2, v1, v4

    .line 107
    :cond_4
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    const-string v1, "/data/system/theme/current/audioeffect/cameraCountdownFast.ogg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 109
    iget-object v1, p0, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    const-string v2, "/data/system/theme/current/audioeffect/cameraCountdownFast.ogg"

    aput-object v2, v1, v4

    .line 111
    :cond_5
    return-void
.end method


# virtual methods
.method public declared-synchronized load(I)V
    .locals 4
    .parameter "soundName"

    .prologue
    .line 182
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 183
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sound requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 185
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSoundIds:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 186
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSoundIds:[I

    iget-object v1, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    aget-object v2, v2, p1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized play(I)V
    .locals 7
    .parameter "soundName"

    .prologue
    .line 221
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 222
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sound requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 224
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSoundIds:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 225
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    aget-object v1, v1, p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/media/MediaActionSound;->mSoundIdToPlay:I

    .line 227
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSoundIds:[I

    iget v1, p0, Landroid/media/MediaActionSound;->mSoundIdToPlay:I

    aput v1, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    :goto_0
    monitor-exit p0

    return-void

    .line 230
    :cond_2
    :try_start_2
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Landroid/media/MediaActionSound;->mSoundIds:[I

    aget v1, v1, p1

    const v2, 0x3f4ccccd

    const v3, 0x3f4ccccd

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    .line 260
    :cond_0
    return-void
.end method
