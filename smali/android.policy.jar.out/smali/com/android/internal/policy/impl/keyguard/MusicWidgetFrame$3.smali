.class Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame$3;
.super Ljava/lang/Object;
.source "MusicWidgetFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame$3;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame$3;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;->access$200(Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame$3;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;->mTransitionToMusicEndAction:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;->access$800(Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    return-void
.end method
