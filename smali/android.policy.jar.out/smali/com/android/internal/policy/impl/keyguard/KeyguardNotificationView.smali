.class public Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;
.super Landroid/widget/LinearLayout;
.source "KeyguardNotificationView.java"


# static fields
.field public static final ALARM_ICON:I = 0x108002e

.field public static final BATTERY_LOW_ICON:I = 0x0

.field public static final CHARGING_ICON:I = 0x0

.field private static final DEBUG:Z = false

.field private static final KEYGUARD_NOTIFICATION_ACTION:Ljava/lang/String; = "com.android.internal.policy.notifications"

.field public static final LOCK_ICON:I = 0x0

.field private static final MSG_INFO_UPDATE:I = 0x65

.field private static final TAG:Ljava/lang/String; = "KeyguardNotificationView"


# instance fields
.field private mAlarmStatusView:Landroid/widget/TextView;

.field private mBottomLine:Landroid/view/View;

.field private mClockView:Lcom/android/internal/policy/impl/keyguard/ClockView;

.field private mDateFormatString:Ljava/lang/CharSequence;

.field private mDateView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mNotificationAdapter:Lcom/android/internal/policy/impl/keyguard/NotificationAdapter;

.field private mNotificationListView:Landroid/widget/ListView;

.field private mNotificationReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 122
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 130
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->mNotificationReceiver:Landroid/content/BroadcastReceiver;

    .line 75
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->mLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 86
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->mHandler:Landroid/os/Handler;

    .line 95
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->launchNotification(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->updateNotifations(Ljava/util/ArrayList;)V

    return-void
.end method

.method private launchNotification(I)V
    .locals 6
    .parameter "position"

    .prologue
    .line 177
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->mNotificationAdapter:Lcom/android/internal/policy/impl/keyguard/NotificationAdapter;

    invoke-virtual {v3, p1}, Lcom/android/internal/policy/impl/keyguard/NotificationAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;

    .line 179
    .local v1, n:Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;
    iget-object v2, v1, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;->baseIntent:Landroid/app/PendingIntent;

    .line 181
    .local v2, pIntent:Landroid/app/PendingIntent;
    if-nez v2, :cond_0

    .line 202
    :goto_0
    return-void

    .line 188
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->resumeAppSwitches()V

    .line 191
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 196
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 200
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    const-string v3, "KeyguardNotificationView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "xiaopeng Sending contentIntent failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 192
    .end local v0           #e:Landroid/app/PendingIntent$CanceledException;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method private maybeSetUpperCaseText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "textView"
    .parameter "text"

    .prologue
    .line 258
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->USE_UPPER_CASE:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v0

    const v1, 0x1020321

    if-eq v0, v1, :cond_1

    .line 260
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    :goto_1
    return-void

    .line 260
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 262
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateNotifations(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, notificationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;>;"
    const/4 v2, 0x4

    .line 246
    move-object v0, p1

    .line 247
    .local v0, n:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;>;"
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->mNotificationAdapter:Lcom/android/internal/policy/impl/keyguard/NotificationAdapter;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/keyguard/NotificationAdapter;->setItemList(Ljava/util/ArrayList;)V

    .line 248
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->mNotificationAdapter:Lcom/android/internal/policy/impl/keyguard/NotificationAdapter;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/NotificationAdapter;->notifyDataSetChanged()V

    .line 250
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->mNotificationAdapter:Lcom/android/internal/policy/impl/keyguard/NotificationAdapter;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/NotificationAdapter;->getCount()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 251
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->mBottomLine:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->mBottomLine:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getAppWidgetId()I
    .locals 1

    .prologue
    .line 242
    const/4 v0, -0x2

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 231
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 232
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 233
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 237
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 238
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 239
    return-void
.end method

.method protected onFinishInflate()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 135
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 136
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 137
    .local v2, res:Landroid/content/res/Resources;
    const v5, 0x1040064

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->mDateFormatString:Ljava/lang/CharSequence;

    .line 139
    const v5, 0x1020063

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->mDateView:Landroid/widget/TextView;

    .line 140
    const v5, 0x102030f

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->mAlarmStatusView:Landroid/widget/TextView;

    .line 141
    const v5, 0x10202e5

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/policy/impl/keyguard/ClockView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->mClockView:Lcom/android/internal/policy/impl/keyguard/ClockView;

    .line 142
    const v5, 0x10202dc

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->mNotificationListView:Landroid/widget/ListView;

    .line 143
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 145
    const v5, 0x10202dd

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->mBottomLine:Landroid/view/View;

    .line 146
    const-string v5, "TAG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mBottomLine = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->mBottomLine:Landroid/view/View;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v5, 0x2

    new-array v1, v5, [Landroid/view/View;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->mDateView:Landroid/widget/TextView;

    aput-object v5, v1, v8

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->mAlarmStatusView:Landroid/widget/TextView;

    aput-object v5, v1, v9

    .line 152
    .local v1, marqueeViews:[Landroid/view/View;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, v1

    if-ge v0, v5, :cond_1

    .line 153
    aget-object v4, v1, v0

    .line 154
    .local v4, v:Landroid/view/View;
    if-nez v4, :cond_0

    .line 155
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t find widget at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 157
    :cond_0
    invoke-virtual {v4, v9}, Landroid/view/View;->setSelected(Z)V

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    .end local v4           #v:Landroid/view/View;
    :cond_1
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/NotificationAdapter;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/internal/policy/impl/keyguard/NotificationAdapter;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->mNotificationAdapter:Lcom/android/internal/policy/impl/keyguard/NotificationAdapter;

    .line 161
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->mNotificationListView:Landroid/widget/ListView;

    if-eqz v5, :cond_2

    .line 162
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->mNotificationListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->mNotificationAdapter:Lcom/android/internal/policy/impl/keyguard/NotificationAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 164
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lockscreen_settings_clock"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 167
    .local v3, showClockTag:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->mNotificationListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->mLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 168
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->mClockView:Lcom/android/internal/policy/impl/keyguard/ClockView;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->mDateView:Landroid/widget/TextView;

    if-eqz v5, :cond_3

    if-nez v3, :cond_3

    .line 169
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->mClockView:Lcom/android/internal/policy/impl/keyguard/ClockView;

    invoke-virtual {v5, v10}, Lcom/android/internal/policy/impl/keyguard/ClockView;->setVisibility(I)V

    .line 170
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->refresh()V

    .line 174
    return-void
.end method

.method protected refresh()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->mClockView:Lcom/android/internal/policy/impl/keyguard/ClockView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/ClockView;->updateTime()V

    .line 207
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->refreshDate()V

    .line 208
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->refreshAlarmStatus()V

    .line 211
    return-void
.end method

.method refreshAlarmStatus()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 215
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getNextAlarm()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, nextAlarm:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->maybeSetUpperCaseText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 218
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->mAlarmStatusView:Landroid/widget/TextView;

    const v2, 0x108002e

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 219
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method refreshDate()V
    .locals 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->mDateView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->mDateFormatString:Ljava/lang/CharSequence;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->maybeSetUpperCaseText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 227
    return-void
.end method
