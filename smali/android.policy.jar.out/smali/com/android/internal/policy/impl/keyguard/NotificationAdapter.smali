.class public Lcom/android/internal/policy/impl/keyguard/NotificationAdapter;
.super Landroid/widget/BaseAdapter;
.source "NotificationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/NotificationAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private drawableId:I

.field private listInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private selectedPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, -0x1

    .line 34
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/NotificationAdapter;->selectedPosition:I

    .line 26
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/NotificationAdapter;->drawableId:I

    .line 35
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/NotificationAdapter;->mContext:Landroid/content/Context;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NotificationAdapter;->listInfo:Ljava/util/ArrayList;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, Info:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;>;"
    const/4 v0, -0x1

    .line 29
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/NotificationAdapter;->selectedPosition:I

    .line 26
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/NotificationAdapter;->drawableId:I

    .line 30
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/NotificationAdapter;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/NotificationAdapter;->listInfo:Ljava/util/ArrayList;

    .line 32
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NotificationAdapter;->listInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NotificationAdapter;->listInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 43
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "item"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NotificationAdapter;->listInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NotificationAdapter;->listInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 50
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 55
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "viewgroup"

    .prologue
    .line 70
    if-nez p2, :cond_3

    .line 71
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/NotificationAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x1090064

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 74
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/NotificationAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/android/internal/policy/impl/keyguard/NotificationAdapter$ViewHolder;-><init>()V

    .line 75
    .local v1, holder:Lcom/android/internal/policy/impl/keyguard/NotificationAdapter$ViewHolder;
    const v7, 0x10202df

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v1, Lcom/android/internal/policy/impl/keyguard/NotificationAdapter$ViewHolder;->msgIMG:Landroid/widget/ImageView;

    .line 77
    const v7, 0x10202e0

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v1, Lcom/android/internal/policy/impl/keyguard/NotificationAdapter$ViewHolder;->msgTitle:Landroid/widget/TextView;

    .line 79
    const v7, 0x10202e1

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v1, Lcom/android/internal/policy/impl/keyguard/NotificationAdapter$ViewHolder;->msgSendTime:Landroid/widget/TextView;

    .line 81
    const v7, 0x10202e2

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v1, Lcom/android/internal/policy/impl/keyguard/NotificationAdapter$ViewHolder;->msgContent:Landroid/widget/TextView;

    .line 83
    const v7, 0x10202de

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, v1, Lcom/android/internal/policy/impl/keyguard/NotificationAdapter$ViewHolder;->mItemView:Landroid/widget/LinearLayout;

    .line 85
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 91
    :goto_0
    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/NotificationAdapter;->selectedPosition:I

    if-ne v7, p1, :cond_4

    .line 92
    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/NotificationAdapter;->drawableId:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 93
    iget-object v7, v1, Lcom/android/internal/policy/impl/keyguard/NotificationAdapter$ViewHolder;->mItemView:Landroid/widget/LinearLayout;

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/NotificationAdapter;->drawableId:I

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 100
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/NotificationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 102
    .local v3, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/NotificationAdapter;->listInfo:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;

    iget-object v7, v7, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 103
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 104
    iget-object v7, v1, Lcom/android/internal/policy/impl/keyguard/NotificationAdapter$ViewHolder;->msgIMG:Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_2
    iget-object v8, v1, Lcom/android/internal/policy/impl/keyguard/NotificationAdapter$ViewHolder;->msgContent:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/NotificationAdapter;->listInfo:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;

    iget-object v7, v7, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;->text:Ljava/lang/String;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/NotificationAdapter;->listInfo:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;

    iget-wide v5, v7, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;->when:J

    .line 113
    .local v5, time:J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-eqz v7, :cond_2

    .line 114
    const-string v7, "kk:mm"

    invoke-static {v7, v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    .line 115
    .local v4, sendTime:Ljava/lang/CharSequence;
    iget-object v7, v1, Lcom/android/internal/policy/impl/keyguard/NotificationAdapter$ViewHolder;->msgSendTime:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    .end local v4           #sendTime:Ljava/lang/CharSequence;
    :cond_2
    return-object p2

    .line 87
    .end local v1           #holder:Lcom/android/internal/policy/impl/keyguard/NotificationAdapter$ViewHolder;
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    .end local v5           #time:J
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/NotificationAdapter$ViewHolder;

    .restart local v1       #holder:Lcom/android/internal/policy/impl/keyguard/NotificationAdapter$ViewHolder;
    goto :goto_0

    .line 96
    :cond_4
    iget-object v7, v1, Lcom/android/internal/policy/impl/keyguard/NotificationAdapter$ViewHolder;->mItemView:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_1

    .line 106
    .restart local v3       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2
.end method

.method public setItemList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter "list"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/NotificationAdapter;->listInfo:Ljava/util/ArrayList;

    .line 65
    return-void
.end method

.method public setSelectedPosition(II)V
    .locals 0
    .parameter "position"
    .parameter "drawId"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/NotificationAdapter;->selectedPosition:I

    .line 60
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/NotificationAdapter;->drawableId:I

    .line 61
    return-void
.end method
