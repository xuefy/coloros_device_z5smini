.class public Landroid/service/dreams/DreamService;
.super Landroid/app/Service;
.source "DreamService.java"

# interfaces
.implements Landroid/view/Window$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/dreams/DreamService$DreamServiceWrapper;
    }
.end annotation


# static fields
.field public static final DREAM_META_DATA:Ljava/lang/String; = "android.service.dream"

.field public static final DREAM_SERVICE:Ljava/lang/String; = "dreams"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.dreams.DreamService"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mDebug:Z

.field private mFinished:Z

.field private mFullscreen:Z

.field private final mHandler:Landroid/os/Handler;

.field private mInteractive:Z

.field private mLowProfile:Z

.field private mSandman:Landroid/service/dreams/IDreamManager;

.field private mScreenBright:Z

.field private mWindow:Landroid/view/Window;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 124
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/service/dreams/DreamService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    .line 148
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mHandler:Landroid/os/Handler;

    .line 153
    iput-boolean v2, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    .line 154
    iput-boolean v3, p0, Landroid/service/dreams/DreamService;->mLowProfile:Z

    .line 155
    iput-boolean v2, p0, Landroid/service/dreams/DreamService;->mFullscreen:Z

    .line 156
    iput-boolean v3, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    .line 159
    iput-boolean v2, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    .line 764
    return-void
.end method

.method static synthetic access$100(Landroid/service/dreams/DreamService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/service/dreams/DreamService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->safelyFinish()V

    return-void
.end method

.method static synthetic access$300(Landroid/service/dreams/DreamService;Landroid/os/IBinder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Landroid/service/dreams/DreamService;->attach(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$400(Landroid/service/dreams/DreamService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Landroid/service/dreams/DreamService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->detach()V

    return-void
.end method

.method private applyFlags(III)I
    .locals 2
    .parameter "oldFlags"
    .parameter "flags"
    .parameter "mask"

    .prologue
    .line 742
    xor-int/lit8 v0, p3, -0x1

    and-int/2addr v0, p1

    and-int v1, p2, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private applySystemUiVisibilityFlags(II)V
    .locals 2
    .parameter "flags"
    .parameter "mask"

    .prologue
    .line 735
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 736
    .local v0, v:Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    .line 737
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    invoke-direct {p0, v1, p1, p2}, Landroid/service/dreams/DreamService;->applyFlags(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 739
    :cond_0
    return-void

    .line 735
    .end local v0           #v:Landroid/view/View;
    :cond_1
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private applyWindowFlags(II)V
    .locals 3
    .parameter "flags"
    .parameter "mask"

    .prologue
    .line 721
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_0

    .line 722
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 723
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1, p1, p2}, Landroid/service/dreams/DreamService;->applyFlags(III)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 724
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 725
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 727
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method private final attach(Landroid/os/IBinder;)V
    .locals 9
    .parameter "windowToken"

    .prologue
    const/16 v8, 0x7e7

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 618
    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    if-eqz v2, :cond_0

    .line 619
    iget-object v2, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attach() called when already attached with token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :goto_0
    return-void

    .line 623
    :cond_0
    iget-boolean v2, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attached on thread "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_1
    iget-object v2, p0, Landroid/service/dreams/DreamService;->mSandman:Landroid/service/dreams/IDreamManager;

    if-nez v2, :cond_2

    .line 626
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->loadSandman()V

    .line 628
    :cond_2
    iput-object p1, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    .line 629
    invoke-static {p0}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v2

    iput-object v2, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    .line 630
    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 631
    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 632
    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v6, -0x100

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 633
    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Landroid/view/Window;->setFormat(I)V

    .line 635
    iget-boolean v2, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string v5, "Attaching window token: %s to window of type %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_3
    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 639
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 640
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 641
    const v2, 0x10301f1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 642
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v6, 0x90101

    iget-boolean v2, p0, Landroid/service/dreams/DreamService;->mFullscreen:Z

    if-eqz v2, :cond_7

    const/16 v2, 0x400

    :goto_1
    or-int/2addr v6, v2

    iget-boolean v2, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    if-eqz v2, :cond_8

    const/16 v2, 0x80

    :goto_2
    or-int/2addr v2, v6

    or-int/2addr v2, v5

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 649
    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 651
    iget-boolean v2, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Created and attached window: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :cond_4
    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    const/4 v5, 0x0

    const-string v6, "dream"

    invoke-virtual {v2, v5, p1, v6, v4}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;Z)V

    .line 654
    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    iput-object v2, p0, Landroid/service/dreams/DreamService;->mWindowManager:Landroid/view/WindowManager;

    .line 656
    iget-boolean v2, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Window added on thread "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_5
    :try_start_0
    iget-boolean v2, p0, Landroid/service/dreams/DreamService;->mLowProfile:Z

    if-eqz v2, :cond_6

    move v3, v4

    :cond_6
    const/4 v2, 0x1

    invoke-direct {p0, v3, v2}, Landroid/service/dreams/DreamService;->applySystemUiVisibilityFlags(II)V

    .line 661
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    iget-object v3, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 669
    iget-object v2, p0, Landroid/service/dreams/DreamService;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroid/service/dreams/DreamService$1;

    invoke-direct {v3, p0}, Landroid/service/dreams/DreamService$1;-><init>(Landroid/service/dreams/DreamService;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_7
    move v2, v3

    .line 642
    goto/16 :goto_1

    :cond_8
    move v2, v3

    goto/16 :goto_2

    .line 662
    :catch_0
    move-exception v1

    .line 663
    .local v1, t:Ljava/lang/Throwable;
    iget-object v2, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string v3, "Crashed adding window view"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 664
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->safelyFinish()V

    goto/16 :goto_0
.end method

.method private final detach()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 583
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    if-nez v1, :cond_0

    .line 608
    :goto_0
    return-void

    .line 589
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->onDreamingStopped()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    :goto_1
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string v2, "detach(): Removing window from window manager"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 600
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v1

    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Dream"

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/WindowManagerGlobal;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 606
    :goto_2
    iput-object v5, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    .line 607
    iput-object v5, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    goto :goto_0

    .line 590
    :catch_0
    move-exception v0

    .line 591
    .local v0, t:Ljava/lang/Throwable;
    iget-object v1, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string v2, "Crashed in onDreamingStopped()"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 602
    .end local v0           #t:Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 603
    .restart local v0       #t:Ljava/lang/Throwable;
    iget-object v1, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string v2, "Crashed removing window view"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private finishInternal()V
    .locals 4

    .prologue
    .line 699
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishInternal() mFinished = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :cond_0
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    if-eqz v1, :cond_1

    .line 714
    :goto_0
    return-void

    .line 702
    :cond_1
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    .line 704
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mSandman:Landroid/service/dreams/IDreamManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    if-eqz v1, :cond_2

    .line 705
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mSandman:Landroid/service/dreams/IDreamManager;

    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/service/dreams/IDreamManager;->finishSelf(Landroid/os/IBinder;)V

    .line 709
    :goto_1
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->stopSelf()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 711
    :catch_0
    move-exception v0

    .line 712
    .local v0, t:Ljava/lang/Throwable;
    iget-object v1, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string v2, "Crashed in finishInternal()"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 707
    .end local v0           #t:Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    iget-object v1, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string v2, "No dream manager found"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private getSystemUiVisibilityFlagValue(IZ)Z
    .locals 2
    .parameter "flag"
    .parameter "defaultValue"

    .prologue
    .line 730
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 731
    .local v0, v:Landroid/view/View;
    :goto_0
    if-nez v0, :cond_1

    .end local p2
    :goto_1
    return p2

    .line 730
    .end local v0           #v:Landroid/view/View;
    .restart local p2
    :cond_0
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 731
    .restart local v0       #v:Landroid/view/View;
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    goto :goto_1
.end method

.method private getWindowFlagValue(IZ)Z
    .locals 1
    .parameter "flag"
    .parameter "defaultValue"

    .prologue
    .line 717
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    if-nez v0, :cond_0

    .end local p2
    :goto_0
    return p2

    .restart local p2
    :cond_0
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    goto :goto_0
.end method

.method private loadSandman()V
    .locals 1

    .prologue
    .line 574
    const-string v0, "dreams"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mSandman:Landroid/service/dreams/IDreamManager;

    .line 575
    return-void
.end method

.method private safelyFinish()V
    .locals 3

    .prologue
    .line 683
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "safelyFinish()"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    if-nez v1, :cond_1

    .line 693
    iget-object v1, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string v2, "Bad dream, did not call super.finish()"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->finishInternal()V

    .line 696
    :cond_1
    :goto_0
    return-void

    .line 686
    :catch_0
    move-exception v0

    .line 687
    .local v0, t:Ljava/lang/Throwable;
    iget-object v1, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string v2, "Crashed in safelyFinish()"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 688
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->finishInternal()V

    goto :goto_0
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "view"
    .parameter "params"

    .prologue
    .line 414
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 415
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 236
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    if-nez v0, :cond_1

    .line 237
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string v1, "Finishing on genericMotionEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->safelyFinish()V

    .line 239
    const/4 v0, 0x1

    .line 241
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 173
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    if-nez v1, :cond_1

    .line 174
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string v2, "Finishing on keyEvent"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_0
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->safelyFinish()V

    .line 190
    :goto_0
    return v0

    .line 177
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 178
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string v2, "Finishing on back key"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_2
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->safelyFinish()V

    goto :goto_0

    .line 181
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 182
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string v2, "Finishing on home key"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_4
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->safelyFinish()V

    goto :goto_0

    .line 185
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x52

    if-ne v1, v2, :cond_7

    .line 186
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string v2, "Finishing on menu key"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_6
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->safelyFinish()V

    goto :goto_0

    .line 190
    :cond_7
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 196
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    if-nez v0, :cond_1

    .line 197
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string v1, "Finishing on keyShortcutEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->safelyFinish()V

    .line 199
    const/4 v0, 0x1

    .line 201
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 209
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    if-nez v0, :cond_1

    .line 210
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string v1, "Finishing on touchEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->safelyFinish()V

    .line 212
    const/4 v0, 0x1

    .line 217
    :goto_0
    return v0

    .line 214
    :cond_1
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_2

    .line 215
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 217
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 225
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    if-nez v0, :cond_1

    .line 226
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string v1, "Finishing on trackballEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->safelyFinish()V

    .line 228
    const/4 v0, 0x1

    .line 230
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 747
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 750
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    if-nez v0, :cond_4

    .line 751
    const-string/jumbo v0, "stopped"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 755
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  window: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 756
    const-string v0, "  flags:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 757
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " interactive"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 758
    :cond_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isLowProfile()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " lowprofile"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 759
    :cond_1
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, " fullscreen"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 760
    :cond_2
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isScreenBright()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, " bright"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 761
    :cond_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 762
    return-void

    .line 753
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "running (token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 426
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final finish()V
    .locals 2

    .prologue
    .line 555
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string v1, "finish()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_0
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->finishInternal()V

    .line 557
    return-void
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public isFullscreen()Z
    .locals 1

    .prologue
    .line 494
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mFullscreen:Z

    return v0
.end method

.method public isInteractive()Z
    .locals 1

    .prologue
    .line 448
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    return v0
.end method

.method public isLowProfile()Z
    .locals 2

    .prologue
    .line 472
    const/4 v0, 0x1

    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mLowProfile:Z

    invoke-direct {p0, v0, v1}, Landroid/service/dreams/DreamService;->getSystemUiVisibilityFlagValue(IZ)Z

    move-result v0

    return v0
.end method

.method public isScreenBright()Z
    .locals 2

    .prologue
    .line 515
    const/16 v0, 0x80

    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    invoke-direct {p0, v0, v1}, Landroid/service/dreams/DreamService;->getWindowFlagValue(IZ)Z

    move-result v0

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 330
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 325
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 298
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .parameter "intent"

    .prologue
    .line 547
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBind() intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_0
    new-instance v0, Landroid/service/dreams/DreamService$DreamServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/dreams/DreamService$DreamServiceWrapper;-><init>(Landroid/service/dreams/DreamService;Landroid/service/dreams/DreamService$1;)V

    return-object v0
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 288
    return-void
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 523
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreate() on thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 525
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .parameter "featureId"

    .prologue
    .line 253
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 562
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_0
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->detach()V

    .line 568
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 569
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 303
    return-void
.end method

.method public onDreamingStarted()V
    .locals 2

    .prologue
    .line 531
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDreamingStarted()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_0
    return-void
.end method

.method public onDreamingStopped()V
    .locals 2

    .prologue
    .line 540
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDreamingStopped()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_0
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 271
    const/4 v0, 0x0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 308
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "view"
    .parameter "menu"

    .prologue
    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .parameter "attrs"

    .prologue
    .line 283
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 293
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .parameter "callback"

    .prologue
    .line 319
    const/4 v0, 0x0

    return-object v0
.end method

.method public setContentView(I)V
    .locals 1
    .parameter "layoutResID"

    .prologue
    .line 366
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(I)V

    .line 367
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 382
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 383
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "view"
    .parameter "params"

    .prologue
    .line 402
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 403
    return-void
.end method

.method public setDebug(Z)V
    .locals 0
    .parameter "dbg"

    .prologue
    .line 165
    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    .line 166
    return-void
.end method

.method public setFullscreen(Z)V
    .locals 2
    .parameter "fullscreen"

    .prologue
    .line 483
    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mFullscreen:Z

    .line 484
    const/16 v0, 0x400

    .line 485
    .local v0, flag:I
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mFullscreen:Z

    if-eqz v1, :cond_0

    move v1, v0

    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/service/dreams/DreamService;->applyWindowFlags(II)V

    .line 486
    return-void

    .line 485
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setInteractive(Z)V
    .locals 0
    .parameter "interactive"

    .prologue
    .line 439
    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    .line 440
    return-void
.end method

.method public setLowProfile(Z)V
    .locals 2
    .parameter "lowProfile"

    .prologue
    .line 460
    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mLowProfile:Z

    .line 461
    const/4 v0, 0x1

    .line 462
    .local v0, flag:I
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mLowProfile:Z

    if-eqz v1, :cond_0

    move v1, v0

    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/service/dreams/DreamService;->applySystemUiVisibilityFlags(II)V

    .line 463
    return-void

    .line 462
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setScreenBright(Z)V
    .locals 2
    .parameter "screenBright"

    .prologue
    .line 503
    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    .line 504
    const/16 v0, 0x80

    .line 505
    .local v0, flag:I
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    if-eqz v1, :cond_0

    move v1, v0

    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/service/dreams/DreamService;->applyWindowFlags(II)V

    .line 506
    return-void

    .line 505
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
