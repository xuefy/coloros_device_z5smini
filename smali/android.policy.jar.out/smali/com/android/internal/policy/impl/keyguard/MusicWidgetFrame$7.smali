.class Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame$7;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "MusicWidgetFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mShowing:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame$7;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method onKeyguardVisibilityChanged(Z)V
    .locals 2
    .parameter "showing"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame$7;->mShowing:Z

    if-ne v0, p1, :cond_0

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame$7;->mShowing:Z

    .line 117
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame$7;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame$7;->mShowing:Z

    #calls: Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;->onKeyguardVisibilityChanged(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;->access$1200(Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;Z)V

    goto :goto_0
.end method
