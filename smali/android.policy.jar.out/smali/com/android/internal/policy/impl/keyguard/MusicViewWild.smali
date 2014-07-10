.class public Lcom/android/internal/policy/impl/keyguard/MusicViewWild;
.super Landroid/widget/FrameLayout;
.source "MusicViewWild.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;,
        Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;,
        Lcom/android/internal/policy/impl/keyguard/MusicViewWild$DataUtils;
    }
.end annotation


# static fields
.field public static final CMDVODMUSICLOCKSCREEN:Ljava/lang/String; = "vodmusicforlockscreen"

.field public static final GETPLAYINGLIST_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.getlist"

.field private static MEDIA_BUTTION_ACTION_COMMAND:Ljava/lang/String; = null

.field private static MEDIA_SERVICECMD:Ljava/lang/String; = null

.field private static final MSG_CREATE_UI:I = 0xca

.field private static final MSG_INFO_UPDATE:I = 0xc8

.field private static final MSG_LIGHT_SCREEN:I = 0xce

.field private static final MSG_PLAY_SONGS:I = 0xcb

.field private static final MSG_TOGGLE_PLAY:I = 0xcc

.field private static final MSG_UPDATE_SONGNAME:I = 0xcd

.field private static final MSG_UPDATE_UI:I = 0xc9

.field public static final MUSIC_META_CHANGED:Ljava/lang/String; = "com.android.music.metachanged"

.field public static final MUSIC_PLAYSTATE_CHANGED:Ljava/lang/String; = "com.android.music.playstatechanged"

.field public static final MUSIC_QUEUE_CHANGED:Ljava/lang/String; = "com.android.music.queuechanged"

.field public static final SENDPLAYINGLIST_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.sendlist"

.field public static final SENDPLAYINGLIST_ACTION_KEY:Ljava/lang/String; = "playlist_key"

.field private static final TAG:Ljava/lang/String; = "MusicViewWild"

.field public static final UPDATEPLAYLIST_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.updatelist"

.field private static mLastSelect:I

.field private static mUiSelect:I


# instance fields
.field private isInit:Z

.field mAdapter:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;

.field private mArtist:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mGallery:Lcom/android/internal/policy/impl/keyguard/GalleryFlow;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsInitialized:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMusicInfo:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;

.field private mMusicPauseDrawable:Landroid/graphics/drawable/Drawable;

.field private mMusicPlayDrawable:Landroid/graphics/drawable/Drawable;

.field private mMusicReceiver:Landroid/content/BroadcastReceiver;

.field private mPM:Landroid/os/PowerManager;

.field private mPause:Landroid/widget/ImageView;

.field private mPlaylist:[J

.field private mSecondView:Landroid/view/View;

.field private mSongname:Landroid/widget/TextView;

.field private mThread:Ljava/lang/Thread;

.field private mUpdateTimeTask:Ljava/lang/Runnable;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 965
    const-string v0, "com.android.music.musicservicecommand"

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->MEDIA_SERVICECMD:Ljava/lang/String;

    .line 966
    const-string v0, "command"

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->MEDIA_BUTTION_ACTION_COMMAND:Ljava/lang/String;

    .line 978
    sput v1, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mLastSelect:I

    .line 979
    sput v1, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mUiSelect:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1067
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 944
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mMusicPauseDrawable:Landroid/graphics/drawable/Drawable;

    .line 945
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mMusicPlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 951
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mView:Landroid/view/View;

    .line 952
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mSecondView:Landroid/view/View;

    .line 953
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mPause:Landroid/widget/ImageView;

    .line 954
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mSongname:Landroid/widget/TextView;

    .line 955
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mArtist:Landroid/widget/TextView;

    .line 956
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;-><init>(Lcom/android/internal/policy/impl/keyguard/MusicViewWild$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mMusicInfo:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;

    .line 990
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mPM:Landroid/os/PowerManager;

    .line 994
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mMusicReceiver:Landroid/content/BroadcastReceiver;

    .line 995
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->isInit:Z

    .line 999
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mIsInitialized:Z

    .line 1001
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$1;-><init>(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mHandler:Landroid/os/Handler;

    .line 1048
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$2;-><init>(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mUpdateTimeTask:Ljava/lang/Runnable;

    .line 1068
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mContext:Landroid/content/Context;

    .line 1071
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->init()V

    .line 1072
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1075
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 944
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mMusicPauseDrawable:Landroid/graphics/drawable/Drawable;

    .line 945
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mMusicPlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 951
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mView:Landroid/view/View;

    .line 952
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mSecondView:Landroid/view/View;

    .line 953
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mPause:Landroid/widget/ImageView;

    .line 954
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mSongname:Landroid/widget/TextView;

    .line 955
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mArtist:Landroid/widget/TextView;

    .line 956
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;-><init>(Lcom/android/internal/policy/impl/keyguard/MusicViewWild$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mMusicInfo:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;

    .line 990
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mPM:Landroid/os/PowerManager;

    .line 994
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mMusicReceiver:Landroid/content/BroadcastReceiver;

    .line 995
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->isInit:Z

    .line 999
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mIsInitialized:Z

    .line 1001
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$1;-><init>(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mHandler:Landroid/os/Handler;

    .line 1048
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$2;-><init>(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mUpdateTimeTask:Ljava/lang/Runnable;

    .line 1076
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mContext:Landroid/content/Context;

    .line 1079
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->init()V

    .line 1080
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1083
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 944
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mMusicPauseDrawable:Landroid/graphics/drawable/Drawable;

    .line 945
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mMusicPlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 951
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mView:Landroid/view/View;

    .line 952
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mSecondView:Landroid/view/View;

    .line 953
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mPause:Landroid/widget/ImageView;

    .line 954
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mSongname:Landroid/widget/TextView;

    .line 955
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mArtist:Landroid/widget/TextView;

    .line 956
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;-><init>(Lcom/android/internal/policy/impl/keyguard/MusicViewWild$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mMusicInfo:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;

    .line 990
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mPM:Landroid/os/PowerManager;

    .line 994
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mMusicReceiver:Landroid/content/BroadcastReceiver;

    .line 995
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->isInit:Z

    .line 999
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mIsInitialized:Z

    .line 1001
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$1;-><init>(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mHandler:Landroid/os/Handler;

    .line 1048
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$2;-><init>(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mUpdateTimeTask:Ljava/lang/Runnable;

    .line 1084
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mContext:Landroid/content/Context;

    .line 1087
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->init()V

    .line 1088
    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->updateView()V

    return-void
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 72
    sget v0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mLastSelect:I

    return v0
.end method

.method static synthetic access$1102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    sput p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mLastSelect:I

    return p0
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->MEDIA_BUTTION_ACTION_COMMAND:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->togglePlay()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->updateSongName(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)Landroid/os/PowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mPM:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mIsInitialized:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mMusicInfo:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mPlaylist:[J

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;[J)[J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mPlaylist:[J

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->isInit:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->updatePlayInfo()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->initView()V

    return-void
.end method

.method private cleanUp()V
    .locals 2

    .prologue
    .line 1123
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mMusicReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1124
    return-void
.end method

.method private getSongInfo(Landroid/content/Context;J)V
    .locals 9
    .parameter "context"
    .parameter "audioid"

    .prologue
    const/4 v4, 0x0

    .line 1361
    const/4 v8, 0x0

    .line 1362
    .local v8, trackname:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1363
    .local v6, artistname:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1364
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_1

    .line 1386
    :cond_0
    :goto_0
    return-void

    .line 1367
    :cond_1
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_display_name"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "artist"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1371
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_3

    .line 1382
    :cond_2
    if-eqz v7, :cond_0

    .line 1383
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1374
    :cond_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1375
    const-string v1, "_display_name"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1376
    const-string v1, "artist"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1378
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mMusicInfo:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;

    invoke-virtual {v1, v8}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->setTrack(Ljava/lang/String;)V

    .line 1379
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mMusicInfo:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;

    invoke-virtual {v1, v6}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->setArtist(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1382
    :cond_4
    if-eqz v7, :cond_0

    .line 1383
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1382
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_5

    .line 1383
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
.end method

.method private getStatus()Z
    .locals 1

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mMusicInfo:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->getStatus()Z

    move-result v0

    return v0
.end method

.method private init()V
    .locals 4

    .prologue
    .line 1153
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mInflater:Landroid/view/LayoutInflater;

    if-nez v1, :cond_0

    .line 1154
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mInflater:Landroid/view/LayoutInflater;

    .line 1157
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mPM:Landroid/os/PowerManager;

    if-nez v1, :cond_1

    .line 1158
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mPM:Landroid/os/PowerManager;

    .line 1160
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x1090098

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1161
    .local v0, prompt:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->addView(Landroid/view/View;)V

    .line 1162
    return-void
.end method

.method private initReceiver()V
    .locals 3

    .prologue
    .line 1166
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1168
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1169
    const-string v1, "com.android.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1170
    const-string v1, "com.android.music.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1172
    const-string v1, "com.android.music.musicservicecommand.sendlist"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1173
    const-string v1, "com.android.music.musicservicecommand.updatelist"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1175
    const-string v1, "MusicViewWild"

    const-string v2, "initReceiver01"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$3;-><init>(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mMusicReceiver:Landroid/content/BroadcastReceiver;

    .line 1217
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mMusicReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1218
    return-void
.end method

.method private initView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1225
    const-string v0, "MusicViewWild"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initView isInit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->isInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    const-string v0, "MusicViewWild"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initView isInit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mPlaylist:[J

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->isInit:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mPlaylist:[J

    array-length v0, v0

    if-lez v0, :cond_2

    .line 1229
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->removeAllViews()V

    .line 1230
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 1231
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mInflater:Landroid/view/LayoutInflater;

    .line 1235
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x109008b

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mView:Landroid/view/View;

    .line 1237
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mPlaylist:[J

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;-><init>(Landroid/content/Context;[J)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mAdapter:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;

    .line 1238
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mView:Landroid/view/View;

    const v1, 0x1020348

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mSongname:Landroid/widget/TextView;

    .line 1239
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mView:Landroid/view/View;

    const v1, 0x1020347

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mArtist:Landroid/widget/TextView;

    .line 1240
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mView:Landroid/view/View;

    const v1, 0x1020345

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mGallery:Lcom/android/internal/policy/impl/keyguard/GalleryFlow;

    .line 1241
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mGallery:Lcom/android/internal/policy/impl/keyguard/GalleryFlow;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mAdapter:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1242
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mGallery:Lcom/android/internal/policy/impl/keyguard/GalleryFlow;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1243
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mGallery:Lcom/android/internal/policy/impl/keyguard/GalleryFlow;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->setSoundEffectsEnabled(Z)V

    .line 1245
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mAdapter:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mGallery:Lcom/android/internal/policy/impl/keyguard/GalleryFlow;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->setIGetVisibilityAlbum(Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$IGetVisibilityAlbum;)V

    .line 1246
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mGallery:Lcom/android/internal/policy/impl/keyguard/GalleryFlow;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$4;-><init>(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->setOnMusicClickListener(Landroid/view/View$OnClickListener;)V

    .line 1265
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mMusicInfo:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->getmIndex()I

    move-result v0

    if-ltz v0, :cond_1

    .line 1266
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mGallery:Lcom/android/internal/policy/impl/keyguard/GalleryFlow;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mMusicInfo:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->getmIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->setSelection(I)V

    .line 1267
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mAdapter:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mMusicInfo:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->getmIndex()I

    move-result v1

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->loadSelectionImage(IZ)V

    .line 1270
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->addView(Landroid/view/View;)V

    .line 1272
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x109008c

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mSecondView:Landroid/view/View;

    .line 1273
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mSecondView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->addView(Landroid/view/View;)V

    .line 1274
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mSecondView:Landroid/view/View;

    const v1, 0x1020349

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mPause:Landroid/widget/ImageView;

    .line 1275
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mPause:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    .line 1276
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mPause:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$5;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$5;-><init>(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1284
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->postInvalidate()V

    .line 1285
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->updatePlayInfo()V

    .line 1287
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->isInit:Z

    .line 1289
    :cond_2
    return-void
.end method

.method private setPlayInfo(Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;)V
    .locals 0
    .parameter "musicInfo"

    .prologue
    .line 1323
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mMusicInfo:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;

    .line 1324
    return-void
.end method

.method private startMusicSrv()V
    .locals 3

    .prologue
    .line 1332
    const-string v1, "MusicViewWild"

    const-string v2, "startMusicSrv"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.strengthenmusic.musicservice"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1334
    .local v0, getplaylist:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "com.android.music.musicservicecommand.getlist"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1335
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1340
    return-void
.end method

.method private togglePlay()V
    .locals 4

    .prologue
    .line 1489
    const/4 v0, 0x0

    .line 1490
    .local v0, command:Ljava/lang/String;
    const-string v0, "togglepauseforlockscreen"

    .line 1491
    if-eqz v0, :cond_1

    .line 1492
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.strengthenmusic.musicservice"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1493
    .local v1, intent:Landroid/content/Intent;
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->MEDIA_BUTTION_ACTION_COMMAND:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1494
    sget v2, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mUiSelect:I

    sget v3, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mLastSelect:I

    if-eq v2, v3, :cond_0

    .line 1495
    const-string v2, "vod"

    sget v3, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mUiSelect:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1496
    sget v2, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mLastSelect:I

    sput v2, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mLastSelect:I

    .line 1498
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1500
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private updateLeftTime(I)V
    .locals 2
    .parameter "lefttime"

    .prologue
    .line 1095
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1096
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1097
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1098
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mIsInitialized:Z

    if-eqz v1, :cond_0

    .line 1099
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1105
    :goto_0
    return-void

    .line 1101
    :cond_0
    const-string v1, "8:32"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private updatePlayBtn(Z)V
    .locals 2
    .parameter "isPlay"

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mPause:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1429
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mPause:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1435
    :cond_0
    :goto_0
    return-void

    .line 1431
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mPause:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1432
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mPause:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updatePlayInfo()V
    .locals 3

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mMusicInfo:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->getStatus()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->updatePlayBtn(Z)V

    .line 1347
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mMusicInfo:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->getInfo()Landroid/text/SpannableString;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mMusicInfo:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->getArtiSt()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->updateText(Landroid/text/SpannableString;Ljava/lang/String;)V

    .line 1349
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mGallery:Lcom/android/internal/policy/impl/keyguard/GalleryFlow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mMusicInfo:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->getmIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1351
    sget v0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mLastSelect:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mMusicInfo:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->getmIndex()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1352
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mMusicInfo:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->getmIndex()I

    move-result v0

    sput v0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mLastSelect:I

    .line 1353
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mGallery:Lcom/android/internal/policy/impl/keyguard/GalleryFlow;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mMusicInfo:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->getmIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->setSelection(I)V

    .line 1354
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mAdapter:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mMusicInfo:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->getmIndex()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->loadSelectionImage(IZ)V

    .line 1358
    :cond_0
    return-void
.end method

.method private updateSongName(I)V
    .locals 3
    .parameter "pos"

    .prologue
    .line 1388
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mPlaylist:[J

    if-nez v0, :cond_1

    .line 1395
    :cond_0
    :goto_0
    return-void

    .line 1391
    :cond_1
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mPlaylist:[J

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 1392
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mPlaylist:[J

    aget-wide v1, v1, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->getSongInfo(Landroid/content/Context;J)V

    .line 1393
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mMusicInfo:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->getInfo()Landroid/text/SpannableString;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mMusicInfo:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->getArtiSt()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->updateText(Landroid/text/SpannableString;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateText(Landroid/text/SpannableString;Ljava/lang/String;)V
    .locals 3
    .parameter "info"
    .parameter "artistname"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 1398
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mSongname:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 1399
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mSongname:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1401
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mSongname:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1404
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mSongname:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1412
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mArtist:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    if-eqz p2, :cond_5

    .line 1413
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mArtist:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 1415
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mArtist:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1418
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mArtist:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1425
    :cond_3
    :goto_1
    return-void

    .line 1407
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mSongname:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1408
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mSongname:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1421
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mArtist:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1422
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mArtist:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateView()V
    .locals 3

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mGallery:Lcom/android/internal/policy/impl/keyguard/GalleryFlow;

    if-nez v0, :cond_0

    .line 1295
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->initView()V

    .line 1303
    :goto_0
    return-void

    .line 1297
    :cond_0
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mPlaylist:[J

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;-><init>(Landroid/content/Context;[J)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mAdapter:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;

    .line 1298
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mGallery:Lcom/android/internal/policy/impl/keyguard/GalleryFlow;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mAdapter:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1299
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mGallery:Lcom/android/internal/policy/impl/keyguard/GalleryFlow;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/GalleryFlow;->postInvalidate()V

    .line 1300
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mAdapter:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mGallery:Lcom/android/internal/policy/impl/keyguard/GalleryFlow;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter;->setIGetVisibilityAlbum(Lcom/android/internal/policy/impl/keyguard/MusicViewWild$ImageAdapter$IGetVisibilityAlbum;)V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1136
    const-string v0, "MusicViewWild"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1138
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->initReceiver()V

    .line 1139
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->startMusicSrv()V

    .line 1140
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1145
    const-string v0, "MusicViewWild"

    const-string v1, "MusicViewWild onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1147
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->cleanUp()V

    .line 1148
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    const/16 v1, 0xce

    .line 1308
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1309
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1311
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-wide/16 v6, 0x12c

    const/16 v5, 0xcd

    const/16 v4, 0xcb

    .line 1459
    const-string v1, "MusicViewWild"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemSelected :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    sput p3, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mUiSelect:I

    .line 1464
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mMusicInfo:Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$MusicInfoBean;->getStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1465
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1466
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1467
    .local v0, msg:Landroid/os/Message;
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1468
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1479
    :goto_0
    return-void

    .line 1472
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1473
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1474
    .restart local v0       #msg:Landroid/os/Message;
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1475
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1484
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
