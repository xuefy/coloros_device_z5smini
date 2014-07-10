.class Landroid/widget/GalleryWidget$2;
.super Ljava/lang/Object;
.source "GalleryWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/GalleryWidget;->onKeyUp(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/GalleryWidget;


# direct methods
.method constructor <init>(Landroid/widget/GalleryWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 1283
    iput-object p1, p0, Landroid/widget/GalleryWidget$2;->this$0:Landroid/widget/GalleryWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1286
    iget-object v0, p0, Landroid/widget/GalleryWidget$2;->this$0:Landroid/widget/GalleryWidget;

    #calls: Landroid/widget/GalleryWidget;->dispatchUnpress()V
    invoke-static {v0}, Landroid/widget/GalleryWidget;->access$300(Landroid/widget/GalleryWidget;)V

    .line 1287
    return-void
.end method
