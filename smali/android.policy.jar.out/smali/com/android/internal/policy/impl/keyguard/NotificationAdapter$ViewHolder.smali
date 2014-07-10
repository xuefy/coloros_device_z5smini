.class Lcom/android/internal/policy/impl/keyguard/NotificationAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "NotificationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/NotificationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field mItemView:Landroid/widget/LinearLayout;

.field msgContent:Landroid/widget/TextView;

.field msgIMG:Landroid/widget/ImageView;

.field msgSendTime:Landroid/widget/TextView;

.field msgTitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
