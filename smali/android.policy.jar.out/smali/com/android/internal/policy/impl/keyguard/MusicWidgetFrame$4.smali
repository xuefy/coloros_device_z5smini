.class Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame$4;
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
    .line 92
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame$4;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame$4;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;

    #calls: Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;->recover()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;->access$900(Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;)V

    .line 96
    return-void
.end method
