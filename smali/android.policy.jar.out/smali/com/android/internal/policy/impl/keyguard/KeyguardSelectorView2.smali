.class public Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;
.super Landroid/widget/FrameLayout;
.source "KeyguardSelectorView2.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$FrameUpdateRunnable;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$TileInfo;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$BatteryRunnable;
    }
.end annotation


# static fields
.field private static final ASSIST_ICON_METADATA_NAME:Ljava/lang/String; = "com.android.systemui.action_assist_icon"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final FINISH_SMS_ANIM:I = 0x65

.field private static final MSG_START_BATTERY_ANIM:I = 0x66

.field private static final MSG_STOP_BATTERY_ANIM:I = 0x68

.field private static final MSG_UPDATE_BATTERY_ANIM:I = 0x67

.field private static final TAG:Ljava/lang/String; = "KeyguardSelectorView2"

.field public static mAnimationLayers:[Lcom/android/internal/policy/impl/keyguard/GridLayoutDrawable;

.field private static mImgLockFire:[Landroid/graphics/drawable/Drawable;

.field private static mImgParticles:[Landroid/graphics/drawable/BitmapDrawable;


# instance fields
.field bDismissed:Z

.field private batterydrawId:[I

.field handler:Landroid/os/Handler;

.field private isrunning:Z

.field private final mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

.field private mAniParticles:Landroid/graphics/drawable/AnimationDrawable;

.field private mAnim:Landroid/animation/ObjectAnimator;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBatteryDrawIndex:I

.field private mBatteryHandler:Landroid/os/Handler;

.field mBatteryLevel:I

.field private mBatteryRunnable:Ljava/lang/Runnable;

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mCameraDisabled:Z

.field mCharging:Z

.field mCurrentIndex:I

.field private mEmergencyButton:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

.field private mFadeView:Landroid/view/View;

.field private mFireUnlock:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

.field private mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

.field private mImgCircle:Landroid/widget/ImageView;

.field private mImglock:Landroid/widget/ImageView;

.field mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mIs40X:Z

.field private mIsBouncing:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSoundStreamId:I

.field private mLockSoundVolume:F

.field private mLockSounds:Landroid/media/SoundPool;

.field private mMasterStreamType:I

.field mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;

.field private mSearchDisabled:Z

.field private mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

.field mShowingChargingAni:Z

.field mUnlockLayout:Landroid/widget/FrameLayout;

.field private mUnlockSoundId:I

.field mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

.field newWaveCenterX:F

.field newWaveCenterY:F

.field offsetX:F

.field offsetY:F

.field private particleIds:[I

.field public task:Ljava/util/TimerTask;

.field xmlIds:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->DEBUG:Z

    .line 163
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mAnimationLayers:[Lcom/android/internal/policy/impl/keyguard/GridLayoutDrawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 371
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 372
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v3, 0x15

    const/4 v2, 0x0

    .line 375
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mShowingChargingAni:Z

    .line 110
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mCharging:Z

    .line 113
    const/16 v1, 0x64

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryLevel:I

    .line 116
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryDrawIndex:I

    .line 118
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mIs40X:Z

    .line 121
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryRunnable:Ljava/lang/Runnable;

    .line 131
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->isrunning:Z

    .line 139
    new-array v1, v3, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->particleIds:[I

    .line 166
    const/16 v1, 0x9

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->batterydrawId:[I

    .line 177
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;

    .line 228
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 251
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    .line 269
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$4;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryHandler:Landroid/os/Handler;

    .line 433
    new-array v1, v3, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->xmlIds:[I

    .line 636
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->bDismissed:Z

    .line 637
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$5;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$5;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->handler:Landroid/os/Handler;

    .line 671
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mCurrentIndex:I

    .line 378
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    .line 381
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 383
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 384
    .local v0, mWM:Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    const/16 v3, 0x2d0

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mIs40X:Z

    .line 389
    new-instance v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->particleIds:[I

    aget v2, v4, v2

    invoke-direct {v1, v3, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mFireUnlock:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 390
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mFireUnlock:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 391
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->initSound()V

    .line 392
    return-void

    :cond_0
    move v1, v2

    .line 384
    goto :goto_0

    .line 139
    nop

    :array_0
    .array-data 0x4
        0xd6t 0x4t 0x8t 0x1t
        0xd7t 0x4t 0x8t 0x1t
        0xd8t 0x4t 0x8t 0x1t
        0xd9t 0x4t 0x8t 0x1t
        0xdat 0x4t 0x8t 0x1t
        0xdbt 0x4t 0x8t 0x1t
        0xdct 0x4t 0x8t 0x1t
        0xddt 0x4t 0x8t 0x1t
        0xdet 0x4t 0x8t 0x1t
        0xdft 0x4t 0x8t 0x1t
        0xe0t 0x4t 0x8t 0x1t
        0xe1t 0x4t 0x8t 0x1t
        0xe2t 0x4t 0x8t 0x1t
        0xe3t 0x4t 0x8t 0x1t
        0xe4t 0x4t 0x8t 0x1t
        0xe5t 0x4t 0x8t 0x1t
        0xe6t 0x4t 0x8t 0x1t
        0xe7t 0x4t 0x8t 0x1t
        0xe8t 0x4t 0x8t 0x1t
        0xe9t 0x4t 0x8t 0x1t
        0xeat 0x4t 0x8t 0x1t
    .end array-data

    .line 166
    :array_1
    .array-data 0x4
        0x18t 0x3t 0x8t 0x1t
        0x19t 0x3t 0x8t 0x1t
        0x1at 0x3t 0x8t 0x1t
        0x1bt 0x3t 0x8t 0x1t
        0x1ct 0x3t 0x8t 0x1t
        0x1dt 0x3t 0x8t 0x1t
        0x1et 0x3t 0x8t 0x1t
        0x1ft 0x3t 0x8t 0x1t
        0x20t 0x3t 0x8t 0x1t
    .end array-data

    .line 433
    :array_2
    .array-data 0x4
        0x4t 0x0t 0xft 0x1t
        0x5t 0x0t 0xft 0x1t
        0x6t 0x0t 0xft 0x1t
        0x7t 0x0t 0xft 0x1t
        0x8t 0x0t 0xft 0x1t
        0x9t 0x0t 0xft 0x1t
        0xat 0x0t 0xft 0x1t
        0xbt 0x0t 0xft 0x1t
        0xct 0x0t 0xft 0x1t
        0xdt 0x0t 0xft 0x1t
        0xet 0x0t 0xft 0x1t
        0xft 0x0t 0xft 0x1t
        0x10t 0x0t 0xft 0x1t
        0x11t 0x0t 0xft 0x1t
        0x12t 0x0t 0xft 0x1t
        0x13t 0x0t 0xft 0x1t
        0x14t 0x0t 0xft 0x1t
        0x15t 0x0t 0xft 0x1t
        0x16t 0x0t 0xft 0x1t
        0x17t 0x0t 0xft 0x1t
        0x18t 0x0t 0xft 0x1t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)Lcom/android/internal/widget/multiwaveview/GlowPadView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->handleBatteryUpdate()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->stopBatteryAnim()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryDrawIndex:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->batterydrawId:[I

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->isrunning:Z

    return v0
.end method

.method static synthetic access$1700()[Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mImgLockFire:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mFireUnlock:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mIsBouncing:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mFadeView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->updateTargets()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->updateBatteryStatus(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method public static final beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 4
    .parameter "parser"
    .parameter "firstElementName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 530
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, type:I
    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 533
    :cond_1
    if-eq v0, v2, :cond_2

    .line 534
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 536
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 537
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexcepted start tag: found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 540
    :cond_3
    return-void
.end method

.method private getBatteryResId()I
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x6

    const/4 v3, 0x5

    .line 920
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryLevel:I

    .line 921
    .local v0, level:I
    const/4 v1, -0x1

    .line 922
    .local v1, resId:I
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mShowingChargingAni:Z

    if-eqz v2, :cond_a

    .line 923
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mCharging:Z

    if-eqz v2, :cond_9

    .line 925
    if-ltz v0, :cond_1

    if-gt v0, v3, :cond_1

    .line 926
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->batterydrawId:[I

    aget v1, v2, v6

    .line 927
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryDrawIndex:I

    .line 961
    :cond_0
    :goto_0
    return v1

    .line 928
    :cond_1
    if-lt v0, v4, :cond_2

    const/16 v2, 0x18

    if-gt v0, v2, :cond_2

    .line 929
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->batterydrawId:[I

    aget v1, v2, v7

    .line 930
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryDrawIndex:I

    goto :goto_0

    .line 931
    :cond_2
    const/16 v2, 0x19

    if-lt v0, v2, :cond_3

    const/16 v2, 0x24

    if-gt v0, v2, :cond_3

    .line 932
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->batterydrawId:[I

    const/4 v3, 0x2

    aget v1, v2, v3

    .line 933
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryDrawIndex:I

    goto :goto_0

    .line 934
    :cond_3
    const/16 v2, 0x25

    if-lt v0, v2, :cond_4

    const/16 v2, 0x30

    if-gt v0, v2, :cond_4

    .line 935
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->batterydrawId:[I

    const/4 v3, 0x3

    aget v1, v2, v3

    .line 936
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryDrawIndex:I

    goto :goto_0

    .line 937
    :cond_4
    const/16 v2, 0x31

    if-lt v0, v2, :cond_5

    const/16 v2, 0x3c

    if-gt v0, v2, :cond_5

    .line 938
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->batterydrawId:[I

    const/4 v3, 0x4

    aget v1, v2, v3

    .line 939
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryDrawIndex:I

    goto :goto_0

    .line 940
    :cond_5
    const/16 v2, 0x3d

    if-lt v0, v2, :cond_6

    const/16 v2, 0x48

    if-gt v0, v2, :cond_6

    .line 941
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->batterydrawId:[I

    aget v1, v2, v3

    .line 942
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryDrawIndex:I

    goto :goto_0

    .line 943
    :cond_6
    const/16 v2, 0x49

    if-lt v0, v2, :cond_7

    const/16 v2, 0x54

    if-gt v0, v2, :cond_7

    .line 944
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->batterydrawId:[I

    aget v1, v2, v4

    .line 945
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryDrawIndex:I

    goto :goto_0

    .line 946
    :cond_7
    const/16 v2, 0x55

    if-lt v0, v2, :cond_8

    const/16 v2, 0x63

    if-gt v0, v2, :cond_8

    .line 947
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->batterydrawId:[I

    const/4 v3, 0x7

    aget v1, v2, v3

    .line 948
    const/4 v2, 0x7

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryDrawIndex:I

    goto :goto_0

    .line 949
    :cond_8
    const/16 v2, 0x64

    if-ne v0, v2, :cond_0

    .line 950
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->batterydrawId:[I

    const/16 v3, 0x8

    aget v1, v2, v3

    .line 951
    const/16 v2, 0x8

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryDrawIndex:I

    goto :goto_0

    .line 954
    :cond_9
    const v1, 0x1080335

    .line 955
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryDrawIndex:I

    goto/16 :goto_0

    .line 958
    :cond_a
    const v1, 0x1080335

    .line 959
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryDrawIndex:I

    goto/16 :goto_0
.end method

.method private handleBatteryUpdate()V
    .locals 5

    .prologue
    const v3, 0x1080335

    .line 334
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mShowingChargingAni:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mCharging:Z

    if-eqz v1, :cond_3

    .line 336
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    if-eqz v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDeviceOverHeat()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 339
    const-string v1, "KeyguardSelectorView2"

    const-string v2, " handleBatteryUpdate isDeviceOverHeat()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->setHandleResources(I)V

    .line 341
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->invalidate()V

    .line 342
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->stopBatteryAnim()V

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mCharging:Z

    if-eqz v1, :cond_0

    .line 347
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->getBatteryResId()I

    move-result v0

    .line 348
    .local v0, batteryResId:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 349
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->setHandleResources(I)V

    .line 350
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->invalidate()V

    .line 352
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_2

    .line 353
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$BatteryRunnable;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryDrawIndex:I

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$BatteryRunnable;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;I)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryRunnable:Ljava/lang/Runnable;

    .line 355
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 356
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 363
    .end local v0           #batteryResId:I
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->setHandleResources(I)V

    .line 364
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->invalidate()V

    .line 365
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->stopBatteryAnim()V

    goto :goto_0
.end method

.method private hidePromptString()V
    .locals 0

    .prologue
    .line 716
    return-void
.end method

.method private initSound()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 554
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 556
    .local v0, lockSoundDefaultAttenuation:I
    const-wide/high16 v4, 0x4024

    const-wide/high16 v6, -0x4010

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    const/high16 v5, 0x4040

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mLockSoundVolume:F

    .line 558
    new-instance v4, Landroid/media/SoundPool;

    const/4 v5, 0x0

    invoke-direct {v4, v8, v8, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mLockSounds:Landroid/media/SoundPool;

    .line 559
    const-string v1, "/system/media/audio/ui/WildUnLock.ogg"

    .line 561
    .local v1, soundPath:Ljava/lang/String;
    const-string v3, "/data/system/theme/current/audioeffect/WildUnLock.ogg"

    .line 563
    .local v3, themeSoundPath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 564
    .local v2, themeSoundFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 565
    move-object v1, v3

    .line 568
    :cond_0
    if-eqz v1, :cond_1

    .line 569
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v4, v1, v8}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mUnlockSoundId:I

    .line 571
    :cond_1
    if-eqz v1, :cond_2

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mUnlockSoundId:I

    if-nez v4, :cond_3

    .line 572
    :cond_2
    const-string v4, "KeyguardSelectorView2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to load sound from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_3
    return-void
.end method

.method private playSounds(Z)V
    .locals 8
    .parameter "locked"

    .prologue
    const/4 v4, 0x1

    .line 578
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 579
    .local v7, cr:Landroid/content/ContentResolver;
    const-string v0, "unlockscreen_sounds_enabled"

    invoke-static {v7, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 580
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mUnlockSoundId:I

    .line 581
    .local v1, whichSound:I
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mLockSounds:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mLockSoundStreamId:I

    invoke-virtual {v0, v2}, Landroid/media/SoundPool;->stop(I)V

    .line 583
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_2

    .line 584
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mAudioManager:Landroid/media/AudioManager;

    .line 585
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    .line 594
    .end local v1           #whichSound:I
    :cond_0
    :goto_0
    return-void

    .line 586
    .restart local v1       #whichSound:I
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mMasterStreamType:I

    .line 589
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mMasterStreamType:I

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mLockSounds:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mLockSoundVolume:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mLockSoundVolume:F

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mLockSoundStreamId:I

    goto :goto_0
.end method

.method private showPromptString()V
    .locals 0

    .prologue
    .line 712
    return-void
.end method

.method private startRunnable()V
    .locals 5

    .prologue
    .line 664
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mFireUnlock:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    if-eqz v1, :cond_0

    .line 665
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mFireUnlock:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 666
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 667
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$FrameUpdateRunnable;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$FrameUpdateRunnable;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;I)V

    mul-int/lit8 v3, v0, 0x14

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 666
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 670
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method private stopBatteryAnim()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 331
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private updateBatteryStatus(Z)V
    .locals 2
    .parameter "showStatus"

    .prologue
    .line 912
    if-eqz p1, :cond_0

    .line 913
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 915
    :cond_0
    return-void
.end method

.method private updateTargets()V
    .locals 0

    .prologue
    .line 835
    return-void
.end method


# virtual methods
.method public disableEmergencyCall()V
    .locals 2

    .prologue
    .line 969
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mEmergencyButton:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mEmergencyButton:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->setVisibility(I)V

    .line 972
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    .line 810
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->bDismissed:Z

    if-eqz v7, :cond_0

    .line 823
    :goto_0
    return-void

    .line 813
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 815
    .local v0, begin:J
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->getChildCount()I

    move-result v3

    .line 816
    .local v3, count:I
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->onDraw(Landroid/graphics/Canvas;)V

    .line 817
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v3, :cond_1

    .line 818
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 819
    .local v2, child:Landroid/view/View;
    const-wide/16 v7, 0x0

    invoke-virtual {p0, p1, v2, v7, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 817
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 822
    .end local v2           #child:Landroid/view/View;
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 823
    .local v4, end:J
    goto :goto_0
.end method

.method doTransition(Landroid/view/View;F)V
    .locals 3
    .parameter "view"
    .parameter "to"

    .prologue
    .line 844
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 847
    :cond_0
    const-string v0, "alpha"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mAnim:Landroid/animation/ObjectAnimator;

    .line 848
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 849
    return-void
.end method

.method public getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 894
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method getLanguage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 543
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 545
    .local v0, am:Landroid/app/IActivityManager;
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 546
    .local v1, config:Landroid/content/res/Configuration;
    iget-object v3, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 550
    .end local v1           #config:Landroid/content/res/Configuration;
    :goto_0
    return-object v3

    .line 547
    :catch_0
    move-exception v2

    .line 548
    .local v2, re:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 550
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getTileInfo(I)Ljava/util/ArrayList;
    .locals 18
    .parameter "xmlId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$TileInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 475
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 477
    .local v8, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$TileInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    .line 478
    .local v10, parser:Landroid/content/res/XmlResourceParser;
    invoke-static {v10}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 479
    .local v1, attrs:Landroid/util/AttributeSet;
    const-string v15, "layer-list"

    invoke-static {v10, v15}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 480
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    .line 484
    .local v4, depth:I
    :cond_0
    :goto_0
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13

    .local v13, type:I
    const/4 v15, 0x3

    if-ne v13, v15, :cond_1

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    if-le v15, v4, :cond_6

    :cond_1
    const/4 v15, 0x1

    if-eq v13, v15, :cond_6

    .line 485
    const/4 v15, 0x2

    if-ne v13, v15, :cond_0

    .line 488
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 489
    .local v9, name:Ljava/lang/String;
    const/4 v2, 0x0

    .line 490
    .local v2, bmpFileName:Ljava/lang/String;
    const/4 v7, 0x0

    .line 491
    .local v7, left:I
    const/4 v12, 0x0

    .line 492
    .local v12, top:I
    const-string v15, "item"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 493
    invoke-interface {v1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v3

    .line 494
    .local v3, count:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v3, :cond_5

    .line 495
    invoke-interface {v1, v6}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v11

    .line 496
    .local v11, strName:Ljava/lang/String;
    const-string v15, "Testing"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "the attribute name is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const-string v15, "drawable"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 498
    invoke-interface {v1, v6}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v14

    .line 500
    .local v14, value:Ljava/lang/String;
    const-string v15, "Testing"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "drawable id is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    move-object v2, v14

    .line 494
    .end local v14           #value:Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 502
    :cond_3
    const-string v15, "left"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 504
    invoke-interface {v1, v6}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v14

    .line 505
    .restart local v14       #value:Ljava/lang/String;
    const-string v15, "Testing"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "left  is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    const/4 v15, 0x0

    const-string v16, "px"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    .line 508
    .local v5, fValue:Ljava/lang/Float;
    invoke-virtual {v5}, Ljava/lang/Float;->intValue()I

    move-result v7

    .line 509
    goto :goto_2

    .end local v5           #fValue:Ljava/lang/Float;
    .end local v14           #value:Ljava/lang/String;
    :cond_4
    const-string v15, "top"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 511
    invoke-interface {v1, v6}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v14

    .line 512
    .restart local v14       #value:Ljava/lang/String;
    const/4 v15, 0x0

    const-string v16, "px"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    .line 513
    .restart local v5       #fValue:Ljava/lang/Float;
    invoke-virtual {v5}, Ljava/lang/Float;->intValue()I

    move-result v12

    .line 514
    const-string v15, "Testing"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "top  is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 519
    .end local v5           #fValue:Ljava/lang/Float;
    .end local v11           #strName:Ljava/lang/String;
    .end local v14           #value:Ljava/lang/String;
    :cond_5
    new-instance v15, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$TileInfo;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ".png"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v7, v12}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$TileInfo;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    const-string v15, "Testing"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "name is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 523
    .end local v2           #bmpFileName:Ljava/lang/String;
    .end local v3           #count:I
    .end local v6           #i:I
    .end local v7           #left:I
    .end local v9           #name:Ljava/lang/String;
    .end local v12           #top:I
    :cond_6
    return-object v8
.end method

.method public hideBouncer(I)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 906
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mIsBouncing:Z

    .line 907
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mFadeView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 909
    return-void
.end method

.method public init()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 446
    const/4 v3, 0x0

    .local v3, j:I
    :goto_0
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->xmlIds:[I

    array-length v9, v9

    if-ge v3, v9, :cond_1

    .line 447
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->xmlIds:[I

    aget v2, v9, v3

    .line 448
    .local v2, id:I
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->getTileInfo(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 449
    .local v5, tileInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$TileInfo;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v6, v9, [Landroid/graphics/drawable/Drawable;

    .line 450
    .local v6, tiles:[Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_0

    .line 451
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$TileInfo;

    iget-object v9, v9, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$TileInfo;->drawablePath:Ljava/lang/String;

    invoke-virtual {v12, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-direct {v10, v11, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v10, v6, v1

    .line 452
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$TileInfo;

    iget v4, v9, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$TileInfo;->left:I

    .line 453
    .local v4, left:I
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$TileInfo;

    iget v7, v9, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$TileInfo;->top:I

    .line 454
    .local v7, top:I
    aget-object v9, v6, v1

    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 455
    .local v8, width:I
    aget-object v9, v6, v1

    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 456
    .local v0, height:I
    aget-object v9, v6, v1

    add-int v10, v4, v8

    add-int v11, v7, v0

    invoke-virtual {v9, v4, v7, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 450
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 459
    .end local v0           #height:I
    .end local v4           #left:I
    .end local v7           #top:I
    .end local v8           #width:I
    :cond_0
    sget-object v9, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mAnimationLayers:[Lcom/android/internal/policy/impl/keyguard/GridLayoutDrawable;

    new-instance v10, Lcom/android/internal/policy/impl/keyguard/GridLayoutDrawable;

    invoke-direct {v10, v6}, Lcom/android/internal/policy/impl/keyguard/GridLayoutDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    aput-object v10, v9, v3

    .line 446
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 461
    .end local v1           #i:I
    .end local v2           #id:I
    .end local v5           #tileInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$TileInfo;>;"
    .end local v6           #tiles:[Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method public isTargetPresent(I)Z
    .locals 1
    .parameter "resId"

    .prologue
    .line 760
    const/4 v0, 0x1

    return v0
.end method

.method public loadBitmap()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 410
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mImgParticles:[Landroid/graphics/drawable/BitmapDrawable;

    if-nez v3, :cond_0

    .line 411
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->particleIds:[I

    array-length v3, v3

    new-array v3, v3, [Landroid/graphics/drawable/BitmapDrawable;

    sput-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mImgParticles:[Landroid/graphics/drawable/BitmapDrawable;

    .line 412
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mImgParticles:[Landroid/graphics/drawable/BitmapDrawable;

    sput-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mImgLockFire:[Landroid/graphics/drawable/Drawable;

    .line 413
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->particleIds:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 414
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 415
    .local v2, opt:Landroid/graphics/BitmapFactory$Options;
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 416
    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 417
    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 418
    iput v6, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 420
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->particleIds:[I

    aget v4, v4, v0

    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 422
    .local v1, m:Landroid/graphics/Bitmap;
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mImgParticles:[Landroid/graphics/drawable/BitmapDrawable;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v4, v3, v0

    .line 413
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 425
    .end local v0           #i:I
    .end local v1           #m:Landroid/graphics/Bitmap;
    .end local v2           #opt:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mAniParticles:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v3, :cond_1

    .line 426
    new-instance v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mAniParticles:Landroid/graphics/drawable/AnimationDrawable;

    .line 427
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->particleIds:[I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 428
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mAniParticles:Landroid/graphics/drawable/AnimationDrawable;

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mImgParticles:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v4, v4, v0

    const/16 v5, 0x1e

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 431
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 867
    const/4 v0, 0x0

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 885
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 886
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 887
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryRunnable:Ljava/lang/Runnable;

    .line 889
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 890
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 788
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mFireUnlock:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    if-nez v0, :cond_0

    .line 806
    :goto_0
    return-void

    .line 801
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mFireUnlock:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 722
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 728
    const v1, 0x1020327

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 729
    .local v0, bouncerFrameView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 731
    const v1, 0x1020329

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mUnlockLayout:Landroid/widget/FrameLayout;

    .line 732
    const v1, 0x102032a

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mImglock:Landroid/widget/ImageView;

    .line 734
    const v1, 0x102032b

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mImgCircle:Landroid/widget/ImageView;

    .line 735
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->loadBitmap()V

    .line 736
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mUnlockLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 737
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mImglock:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 738
    const v1, 0x10202c5

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mEmergencyButton:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    .line 739
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mEmergencyButton:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    if-eqz v1, :cond_0

    .line 740
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mEmergencyButton:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->setVisibility(I)V

    .line 746
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mFireUnlock:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 749
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050078

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->offsetX:F

    .line 750
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050079

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->offsetY:F

    .line 751
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 769
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 772
    sub-int v2, p4, p2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p2

    sub-int/2addr v2, p2

    int-to-float v0, v2

    .line 773
    .local v0, newWaveCenterX:F
    const/4 v1, 0x0

    .line 774
    .local v1, newWaveCenterY:F
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mIs40X:Z

    if-eqz v2, :cond_0

    .line 775
    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p3

    add-int/lit8 v2, v2, -0x14

    int-to-float v1, v2

    .line 779
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mFireUnlock:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setPositionX(F)V

    .line 780
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mFireUnlock:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setPositionY(F)V

    .line 782
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mFireUnlock:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const/high16 v3, 0x3f80

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 783
    return-void

    .line 777
    :cond_0
    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p3

    add-int/lit16 v2, v2, -0x9b

    int-to-float v1, v2

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 872
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 873
    return-void
.end method

.method public onResume(I)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 877
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mEmergencyButton:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mEmergencyButton:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->setVisibility(I)V

    .line 880
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 881
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "v"
    .parameter "event"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 598
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 600
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 633
    :goto_0
    return v5

    .line 602
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mImgCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 603
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mImglock:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 604
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mImgCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 608
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->isrunning:Z

    .line 609
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->startRunnable()V

    .line 610
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->playSounds(Z)V

    .line 614
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1, v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    goto :goto_0

    .line 619
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1, v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    goto :goto_0

    .line 622
    :pswitch_2
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->isrunning:Z

    .line 623
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 624
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mUnlockLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 625
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mImgCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 626
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mImglock:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 627
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->showPromptString()V

    .line 628
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mFireUnlock:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 630
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->invalidate()V

    goto :goto_0

    .line 600
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 863
    return-void
.end method

.method public setCarrierArea(Landroid/view/View;)V
    .locals 0
    .parameter "carrierArea"

    .prologue
    .line 754
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mFadeView:Landroid/view/View;

    .line 755
    return-void
.end method

.method public setHandleResources(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 965
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mImglock:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mImglock:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 966
    :cond_0
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 852
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 853
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .parameter "utils"

    .prologue
    .line 856
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 857
    return-void
.end method

.method public showBouncer(I)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 899
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mIsBouncing:Z

    .line 900
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mFadeView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 902
    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 830
    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 841
    return-void
.end method
