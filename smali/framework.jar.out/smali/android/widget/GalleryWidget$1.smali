.class Landroid/widget/GalleryWidget$1;
.super Ljava/lang/Object;
.source "GalleryWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GalleryWidget;
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
    .line 131
    iput-object p1, p0, Landroid/widget/GalleryWidget$1;->this$0:Landroid/widget/GalleryWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Landroid/widget/GalleryWidget$1;->this$0:Landroid/widget/GalleryWidget;

    const/4 v1, 0x0

    #setter for: Landroid/widget/GalleryWidget;->mSuppressSelectionChanged:Z
    invoke-static {v0, v1}, Landroid/widget/GalleryWidget;->access$002(Landroid/widget/GalleryWidget;Z)Z

    .line 135
    iget-object v0, p0, Landroid/widget/GalleryWidget$1;->this$0:Landroid/widget/GalleryWidget;

    invoke-virtual {v0}, Landroid/widget/GalleryWidget;->selectionChanged()V

    .line 136
    return-void
.end method
