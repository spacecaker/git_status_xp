.class public Lcom/android/music/MediaAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "MediaAppWidgetProvider.java"


# static fields
.field private static sInstance:Lcom/android/music/MediaAppWidgetProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private defaultAppWidget(Landroid/content/Context;[I)V
    .locals 4
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 68
    .local v0, res:Landroid/content/res/Resources;
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x7f03

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 70
    .local v1, views:Landroid/widget/RemoteViews;
    const v2, 0x7f0c0001

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 71
    const v2, 0x7f0c0002

    const v3, 0x7f090097

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 73
    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/android/music/MediaAppWidgetProvider;->linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 74
    invoke-direct {p0, p1, p2, v1}, Lcom/android/music/MediaAppWidgetProvider;->pushUpdate(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V

    .line 75
    return-void
.end method

.method static declared-synchronized getInstance()Lcom/android/music/MediaAppWidgetProvider;
    .locals 2

    .prologue
    .line 42
    const-class v0, Lcom/android/music/MediaAppWidgetProvider;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/music/MediaAppWidgetProvider;->sInstance:Lcom/android/music/MediaAppWidgetProvider;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lcom/android/music/MediaAppWidgetProvider;

    invoke-direct {v1}, Lcom/android/music/MediaAppWidgetProvider;-><init>()V

    sput-object v1, Lcom/android/music/MediaAppWidgetProvider;->sInstance:Lcom/android/music/MediaAppWidgetProvider;

    .line 45
    :cond_0
    sget-object v1, Lcom/android/music/MediaAppWidgetProvider;->sInstance:Lcom/android/music/MediaAppWidgetProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 42
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private hasInstances(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 91
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 92
    .local v1, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 94
    .local v0, appWidgetIds:[I
    array-length v2, v0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x7f0c

    const/4 v3, 0x0

    .line 177
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/music/MediaPlaybackService;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 179
    if-eqz p3, :cond_0

    .line 180
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/music/MediaPlaybackActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    invoke-static {p1, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 183
    invoke-virtual {p2, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 191
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand.togglepause"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 193
    invoke-static {p1, v3, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 195
    const v2, 0x7f0c0003

    invoke-virtual {p2, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 197
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand.next"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 199
    invoke-static {p1, v3, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 201
    const v1, 0x7f0c0004

    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 202
    return-void

    .line 185
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/music/MusicBrowserActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    invoke-static {p1, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 188
    invoke-virtual {p2, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private pushUpdate(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetIds"
    .parameter "views"

    .prologue
    .line 79
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 80
    .local v0, gm:Landroid/appwidget/AppWidgetManager;
    if-eqz p2, :cond_0

    .line 81
    invoke-virtual {v0, p2, p3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, p3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    goto :goto_0
.end method


# virtual methods
.method notifyChange(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;)V
    .locals 1
    .parameter "service"
    .parameter "what"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/music/MediaAppWidgetProvider;->hasInstances(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    const-string v0, "com.android.music.metachanged"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.music.playstatechanged"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/music/MediaAppWidgetProvider;->performUpdate(Lcom/android/music/MediaPlaybackService;[I)V

    .line 107
    :cond_1
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 50
    invoke-direct {p0, p1, p3}, Lcom/android/music/MediaAppWidgetProvider;->defaultAppWidget(Landroid/content/Context;[I)V

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, updateIntent:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "appwidgetupdate"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v1, "appWidgetIds"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 58
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 59
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 60
    return-void
.end method

.method performUpdate(Lcom/android/music/MediaPlaybackService;[I)V
    .locals 12
    .parameter "service"
    .parameter "appWidgetIds"

    .prologue
    const v11, 0x7f0c0003

    const v10, 0x7f0c0002

    const v9, 0x7f0c0001

    .line 113
    invoke-virtual {p1}, Lcom/android/music/MediaPlaybackService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 114
    .local v3, res:Landroid/content/res/Resources;
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Lcom/android/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/high16 v8, 0x7f03

    invoke-direct {v6, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 116
    .local v6, views:Landroid/widget/RemoteViews;
    invoke-virtual {p1}, Lcom/android/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v5

    .line 117
    .local v5, titleName:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Lcom/android/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, artistName:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 121
    .local v1, errorState:Ljava/lang/CharSequence;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    .line 122
    .local v4, status:Ljava/lang/String;
    const-string v7, "shared"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "unmounted"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 124
    :cond_0
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 125
    const v7, 0x7f090079

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 139
    :cond_1
    :goto_0
    if-eqz v1, :cond_6

    .line 141
    const/16 v7, 0x8

    invoke-virtual {v6, v9, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 142
    invoke-virtual {v6, v10, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 152
    :goto_1
    invoke-virtual {p1}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v2

    .line 153
    .local v2, playing:Z
    if-eqz v2, :cond_7

    .line 154
    const v7, 0x7f02001e

    invoke-virtual {v6, v11, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 160
    :goto_2
    invoke-direct {p0, p1, v6, v2}, Lcom/android/music/MediaAppWidgetProvider;->linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 162
    invoke-direct {p0, p1, p2, v6}, Lcom/android/music/MediaAppWidgetProvider;->pushUpdate(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V

    .line 163
    return-void

    .line 127
    .end local v2           #playing:Z
    :cond_2
    const v7, 0x7f0900a2

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 129
    :cond_3
    const-string v7, "removed"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 130
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 131
    const v7, 0x7f09007d

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 133
    :cond_4
    const v7, 0x7f0900a6

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 135
    :cond_5
    if-nez v5, :cond_1

    .line 136
    const v7, 0x7f09003b

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 146
    :cond_6
    const/4 v7, 0x0

    invoke-virtual {v6, v9, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 147
    invoke-virtual {v6, v9, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 148
    invoke-virtual {v6, v10, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 156
    .restart local v2       #playing:Z
    :cond_7
    const v7, 0x7f02001f

    invoke-virtual {v6, v11, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_2
.end method
