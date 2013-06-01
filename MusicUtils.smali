.class public Lcom/android/music/MusicUtils;
.super Ljava/lang/Object;
.source "MusicUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/MusicUtils$Defs;,
        Lcom/android/music/MusicUtils$FastBitmapDrawable;,
        Lcom/android/music/MusicUtils$LogEntry;,
        Lcom/android/music/MusicUtils$ServiceBinder;,
        Lcom/android/music/MusicUtils$ServiceToken;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicUtils"

.field private static mCachedBit:Landroid/graphics/Bitmap;

.field private static mLastSdStatus:Ljava/lang/String;

.field static sActiveTabIndex:I

.field private static final sArtCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static sArtCacheId:I

.field private static sArtId:I

.field private static final sArtworkUri:Landroid/net/Uri;

.field private static final sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private static final sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

.field private static sConnectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/android/music/MusicUtils$ServiceBinder;",
            ">;"
        }
    .end annotation
.end field

.field private static sContentValuesCache:[Landroid/content/ContentValues;

.field private static final sEmptyList:[J

.field private static final sExternalMediaUri:Ljava/lang/String;

.field private static sFormatBuilder:Ljava/lang/StringBuilder;

.field private static sFormatter:Ljava/util/Formatter;

.field private static sLogPtr:I

.field private static sMusicLog:[Lcom/android/music/MusicUtils$LogEntry;

.field public static sService:Lcom/android/music/IMediaPlaybackService;

.field private static sTime:Landroid/text/format/Time;

.field private static final sTimeArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 153
    sput-object v4, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/music/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    .line 307
    new-array v0, v3, [J

    sput-object v0, Lcom/android/music/MusicUtils;->sEmptyList:[J

    .line 536
    sput-object v4, Lcom/android/music/MusicUtils;->sContentValuesCache:[Landroid/content/ContentValues;

    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/android/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 731
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/music/MusicUtils;->sFormatter:Ljava/util/Formatter;

    .line 732
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/android/music/MusicUtils;->sTimeArgs:[Ljava/lang/Object;

    .line 843
    const/4 v0, -0x2

    sput v0, Lcom/android/music/MusicUtils;->sArtId:I

    .line 844
    sput-object v4, Lcom/android/music/MusicUtils;->mCachedBit:Landroid/graphics/Bitmap;

    .line 845
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/android/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    .line 846
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/android/music/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 847
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/music/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    .line 848
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    .line 849
    sput v5, Lcom/android/music/MusicUtils;->sArtCacheId:I

    .line 855
    sget-object v0, Lcom/android/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 856
    sget-object v0, Lcom/android/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 858
    sget-object v0, Lcom/android/music/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 859
    sget-object v0, Lcom/android/music/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 1030
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/music/MusicUtils;->sExternalMediaUri:Ljava/lang/String;

    .line 1131
    sput v5, Lcom/android/music/MusicUtils;->sActiveTabIndex:I

    .line 1328
    const/16 v0, 0x64

    new-array v0, v0, [Lcom/android/music/MusicUtils$LogEntry;

    sput-object v0, Lcom/android/music/MusicUtils;->sMusicLog:[Lcom/android/music/MusicUtils$LogEntry;

    .line 1329
    sput v3, Lcom/android/music/MusicUtils;->sLogPtr:I

    .line 1330
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    sput-object v0, Lcom/android/music/MusicUtils;->sTime:Landroid/text/format/Time;

    .line 72
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Landroid/text/format/Time;
    .locals 1

    .prologue
    .line 1330
    sget-object v0, Lcom/android/music/MusicUtils;->sTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static activateTab(Landroid/app/Activity;I)V
    .locals 4
    .parameter "a"
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 1195
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1196
    .local v0, intent:Landroid/content/Intent;
    packed-switch p1, :pswitch_data_0

    .line 1221
    :goto_0
    return-void

    .line 1198
    :pswitch_0
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "vnd.android.cursor.dir/artistalbum"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1216
    :goto_1
    const-string v1, "withtabs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1217
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1218
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1219
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1220
    invoke-virtual {p0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 1201
    :pswitch_1
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "vnd.android.cursor.dir/album"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1204
    :pswitch_2
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "vnd.android.cursor.dir/track"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1207
    :pswitch_3
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "vnd.android.cursor.dir/playlist"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1210
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v1, Lcom/android/music/MediaPlaybackActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1211
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1196
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0018
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static addToCurrentPlaylist(Landroid/content/Context;[J)V
    .locals 7
    .parameter "context"
    .parameter "list"

    .prologue
    .line 524
    sget-object v1, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-nez v1, :cond_0

    .line 534
    :goto_0
    return-void

    .line 528
    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    const/4 v2, 0x3

    invoke-interface {v1, p1, v2}, Lcom/android/music/IMediaPlaybackService;->enqueue([JI)V

    .line 529
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 530
    const v2, 0x7f090004

    array-length v3, p1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    array-length v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 529
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 531
    .local v0, message:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 532
    .end local v0           #message:Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static addToPlaylist(Landroid/content/Context;[JJ)V
    .locals 7
    .parameter "context"
    .parameter "ids"
    .parameter "playlistid"

    .prologue
    .line 565
    if-nez p1, :cond_0

    .line 568
    const-string p0, "MusicBase"

    .end local p0
    const-string p1, "ListSelection null"

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    .end local p2
    :goto_0
    return-void

    .line 570
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_0
    array-length v6, p1

    .line 571
    .local v6, size:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 574
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 575
    const-string v3, "count(*)"

    aput-object v3, v2, v1

    .line 577
    .local v2, cols:[Ljava/lang/String;
    const-string v1, "external"

    invoke-static {v1, p2, p3}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 578
    .local v1, uri:Landroid/net/Uri;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    .line 579
    .end local p2
    .local p3, cur:Landroid/database/Cursor;
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 580
    const/4 p2, 0x0

    invoke-interface {p3, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 581
    .local p2, base:I
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 582
    const/4 v2, 0x0

    .line 583
    .local v2, numinserted:I
    const/4 p3, 0x0

    .local p3, i:I
    :goto_1
    if-lt p3, v6, :cond_1

    .line 587
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 588
    .end local p1
    const p2, 0x7f090004

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    .end local p2           #base:I
    .end local p3           #i:I
    const/4 v0, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v0           #resolver:Landroid/content/ContentResolver;
    move-result-object v1

    .end local v1           #uri:Landroid/net/Uri;
    aput-object v1, p3, v0

    .line 587
    invoke-virtual {p1, p2, v2, p3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 589
    .local p1, message:Ljava/lang/String;
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .end local p0
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 584
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local p0
    .local p1, ids:[J
    .restart local p2       #base:I
    .restart local p3       #i:I
    :cond_1
    const/16 v3, 0x3e8

    invoke-static {p1, p3, v3, p2}, Lcom/android/music/MusicUtils;->makeInsertItems([JIII)V

    .line 585
    sget-object v3, Lcom/android/music/MusicUtils;->sContentValuesCache:[Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v3

    add-int/2addr v2, v3

    .line 583
    add-int/lit16 p3, p3, 0x3e8

    goto :goto_1
.end method

.method public static bindToService(Landroid/app/Activity;)Lcom/android/music/MusicUtils$ServiceToken;
    .locals 1
    .parameter "context"

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/android/music/MusicUtils$ServiceToken;

    move-result-object v0

    return-object v0
.end method

.method public static bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/android/music/MusicUtils$ServiceToken;
    .locals 6
    .parameter "context"
    .parameter "callback"

    .prologue
    const-class v5, Lcom/android/music/MediaPlaybackService;

    .line 168
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    .line 169
    .local v1, realActivity:Landroid/app/Activity;
    if-nez v1, :cond_0

    .line 170
    move-object v1, p0

    .line 172
    :cond_0
    new-instance v0, Landroid/content/ContextWrapper;

    invoke-direct {v0, v1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 173
    .local v0, cw:Landroid/content/ContextWrapper;
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/music/MediaPlaybackService;

    invoke-direct {v3, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 174
    new-instance v2, Lcom/android/music/MusicUtils$ServiceBinder;

    invoke-direct {v2, p1}, Lcom/android/music/MusicUtils$ServiceBinder;-><init>(Landroid/content/ServiceConnection;)V

    .line 175
    .local v2, sb:Lcom/android/music/MusicUtils$ServiceBinder;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-class v4, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v3, v0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 176
    sget-object v3, Lcom/android/music/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    new-instance v3, Lcom/android/music/MusicUtils$ServiceToken;

    invoke-direct {v3, v0}, Lcom/android/music/MusicUtils$ServiceToken;-><init>(Landroid/content/ContextWrapper;)V

    .line 180
    :goto_0
    return-object v3

    .line 179
    :cond_1
    const-string v3, "Music"

    const-string v4, "Failed to bind to service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static clearAlbumArtCache()V
    .locals 2

    .prologue
    .line 875
    sget-object v0, Lcom/android/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v0

    .line 876
    :try_start_0
    sget-object v1, Lcom/android/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 875
    monitor-exit v0

    .line 878
    return-void

    .line 875
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static clearPlaylist(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "plid"

    .prologue
    const/4 v4, 0x0

    .line 451
    const-string v1, "external"

    int-to-long v2, p1

    invoke-static {v1, v2, v3}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 452
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 453
    return-void
.end method

.method public static clearQueue()V
    .locals 3

    .prologue
    .line 815
    :try_start_0
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-interface {v0, v1, v2}, Lcom/android/music/IMediaPlaybackService;->removeTracks(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 818
    :goto_0
    return-void

    .line 816
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static debugDump(Ljava/io/PrintWriter;)V
    .locals 4
    .parameter "out"

    .prologue
    .line 1342
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v3, Lcom/android/music/MusicUtils;->sMusicLog:[Lcom/android/music/MusicUtils$LogEntry;

    array-length v3, v3

    if-lt v1, v3, :cond_0

    .line 1352
    return-void

    .line 1343
    :cond_0
    sget v3, Lcom/android/music/MusicUtils;->sLogPtr:I

    add-int v2, v3, v1

    .line 1344
    .local v2, idx:I
    sget-object v3, Lcom/android/music/MusicUtils;->sMusicLog:[Lcom/android/music/MusicUtils$LogEntry;

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 1345
    sget-object v3, Lcom/android/music/MusicUtils;->sMusicLog:[Lcom/android/music/MusicUtils$LogEntry;

    array-length v3, v3

    sub-int/2addr v2, v3

    .line 1347
    :cond_1
    sget-object v3, Lcom/android/music/MusicUtils;->sMusicLog:[Lcom/android/music/MusicUtils$LogEntry;

    aget-object v0, v3, v2

    .line 1348
    .local v0, entry:Lcom/android/music/MusicUtils$LogEntry;
    if-eqz v0, :cond_2

    .line 1349
    invoke-virtual {v0, p0}, Lcom/android/music/MusicUtils$LogEntry;->dump(Ljava/io/PrintWriter;)V

    .line 1342
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static debugLog(Ljava/lang/Object;)V
    .locals 3
    .parameter "o"

    .prologue
    .line 1334
    sget-object v0, Lcom/android/music/MusicUtils;->sMusicLog:[Lcom/android/music/MusicUtils$LogEntry;

    sget v1, Lcom/android/music/MusicUtils;->sLogPtr:I

    new-instance v2, Lcom/android/music/MusicUtils$LogEntry;

    invoke-direct {v2, p0}, Lcom/android/music/MusicUtils$LogEntry;-><init>(Ljava/lang/Object;)V

    aput-object v2, v0, v1

    .line 1335
    sget v0, Lcom/android/music/MusicUtils;->sLogPtr:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/music/MusicUtils;->sLogPtr:I

    .line 1336
    sget v0, Lcom/android/music/MusicUtils;->sLogPtr:I

    sget-object v1, Lcom/android/music/MusicUtils;->sMusicLog:[Lcom/android/music/MusicUtils$LogEntry;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1337
    const/4 v0, 0x0

    sput v0, Lcom/android/music/MusicUtils;->sLogPtr:I

    .line 1339
    :cond_0
    return-void
.end method

.method public static deleteTracks(Landroid/content/Context;[J)V
    .locals 7
    .parameter "context"
    .parameter "list"

    .prologue
    .line 458
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    .line 459
    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 460
    .local v2, cols:[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 461
    .local v6, where:Ljava/lang/StringBuilder;
    const-string v0, "_id IN ("

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_1

    .line 468
    const-string v0, ")"

    .end local v0           #i:I
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 470
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 469
    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 472
    .local v2, c:Landroid/database/Cursor;
    if-eqz v2, :cond_0

    .line 477
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 478
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    .line 493
    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 496
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 497
    :goto_3
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 511
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 514
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 515
    const v1, 0x7f090003

    array-length v2, p1

    .end local v2           #c:Landroid/database/Cursor;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    array-length p1, p1

    .end local p1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    .line 514
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 517
    .local p1, message:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .end local p1           #message:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 520
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .end local p0
    const-string p1, "content://media"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 521
    return-void

    .line 463
    .restart local v0       #i:I
    .local v2, cols:[Ljava/lang/String;
    .restart local p0
    .local p1, list:[J
    :cond_1
    aget-wide v3, p1, v0

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 464
    array-length v1, p1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_2

    .line 465
    const-string v1, ","

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 480
    .end local v0           #i:I
    .local v2, c:Landroid/database/Cursor;
    :cond_3
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 481
    .local v0, id:J
    sget-object v3, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v3, v0, v1}, Lcom/android/music/IMediaPlaybackService;->removeTrack(J)I

    .line 483
    const/4 v0, 0x2

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    .end local v0           #id:J
    move-result-wide v0

    .line 484
    .local v0, artIndex:J
    sget-object v3, Lcom/android/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 485
    :try_start_2
    sget-object v4, Lcom/android/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .end local v0           #artIndex:J
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 487
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 489
    :catch_0
    move-exception v0

    goto :goto_2

    .line 484
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 498
    :cond_4
    const/4 v0, 0x1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 499
    .local v1, name:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 501
    .local v0, f:Ljava/io/File;
    :try_start_6
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .end local v0           #f:Ljava/io/File;
    if-nez v0, :cond_5

    .line 504
    const-string v0, "MusicUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to delete file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .end local v1           #name:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_5
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_3

    .line 507
    :catch_1
    move-exception v0

    .line 508
    .local v0, ex:Ljava/lang/SecurityException;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_3
.end method

.method public static displayDatabaseError(Landroid/app/Activity;)V
    .locals 12
    .parameter "a"

    .prologue
    const v11, 0x7f0b0034

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 651
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 702
    :goto_0
    return-void

    .line 658
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 659
    .local v2, status:Ljava/lang/String;
    const v3, 0x7f08002c

    .line 660
    .local v3, title:I
    const v1, 0x7f08002d

    .line 662
    .local v1, message:I
    const-string v6, "shared"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 663
    const-string v6, "unmounted"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 664
    :cond_1
    const v3, 0x7f08002a

    .line 665
    const v1, 0x7f08002b

    .line 683
    :cond_2
    :goto_1
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 684
    invoke-virtual {p0, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 685
    .local v5, v:Landroid/view/View;
    if-eqz v5, :cond_3

    .line 686
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 688
    :cond_3
    const v6, 0x7f0b0033

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 689
    if-eqz v5, :cond_4

    .line 690
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 692
    :cond_4
    const v6, 0x102000a

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 693
    if-eqz v5, :cond_5

    .line 694
    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 696
    :cond_5
    const v6, 0x7f0b0017

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 697
    if-eqz v5, :cond_6

    .line 698
    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 700
    :cond_6
    invoke-virtual {p0, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 701
    .local v4, tv:Landroid/widget/TextView;
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 666
    .end local v4           #tv:Landroid/widget/TextView;
    .end local v5           #v:Landroid/view/View;
    :cond_7
    const-string v6, "removed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 667
    const v3, 0x7f080028

    .line 668
    const v1, 0x7f080029

    goto :goto_1

    .line 669
    :cond_8
    const-string v6, "mounted"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 674
    const-string v6, ""

    invoke-virtual {p0, v6}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 675
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 676
    .local v0, intent:Landroid/content/Intent;
    const-class v6, Lcom/android/music/ScanningProgress;

    invoke-virtual {v0, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 677
    const/16 v6, 0xb

    invoke-virtual {p0, v0, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 678
    .end local v0           #intent:Landroid/content/Intent;
    :cond_9
    sget-object v6, Lcom/android/music/MusicUtils;->mLastSdStatus:Ljava/lang/String;

    invoke-static {v6, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 679
    sput-object v2, Lcom/android/music/MusicUtils;->mLastSdStatus:Ljava/lang/String;

    .line 680
    const-string v6, "MusicUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "sd card: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public static getAllSongs(Landroid/content/Context;)[J
    .locals 10
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 381
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 382
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v3

    const-string v3, "is_music=1"

    move-object v0, p0

    move-object v5, v4

    .line 381
    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 385
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 397
    :cond_0
    if-eqz v6, :cond_1

    .line 398
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v4

    .line 395
    :goto_0
    return-object v0

    .line 388
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 389
    .local v8, len:I
    new-array v9, v8, [J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 390
    .local v9, list:[J
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-lt v7, v8, :cond_4

    .line 397
    if-eqz v6, :cond_3

    .line 398
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v9

    .line 395
    goto :goto_0

    .line 391
    :cond_4
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 392
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    aput-wide v0, v9, v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 390
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 396
    .end local v7           #i:I
    .end local v8           #len:I
    .end local v9           #list:[J
    :catchall_0
    move-exception v0

    .line 397
    if-eqz v6, :cond_5

    .line 398
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 400
    :cond_5
    throw v0
.end method

.method public static getArtwork(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "context"
    .parameter "song_id"
    .parameter "album_id"

    .prologue
    .line 970
    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->getArtwork(Landroid/content/Context;JJZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getArtwork(Landroid/content/Context;JJZ)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "context"
    .parameter "song_id"
    .parameter "album_id"
    .parameter "allowdefault"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    .line 979
    cmp-long v5, p3, v8

    if-gez v5, :cond_3

    .line 982
    cmp-long v5, p1, v8

    if-ltz v5, :cond_1

    .line 983
    const-wide/16 v5, -0x1

    invoke-static {p0, p1, p2, v5, v6}, Lcom/android/music/MusicUtils;->getArtworkFromFile(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 984
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    move-object v5, v0

    .line 1026
    .end local v0           #bm:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object v5

    .line 988
    :cond_1
    if-eqz p5, :cond_2

    .line 989
    invoke-static {p0}, Lcom/android/music/MusicUtils;->getDefaultArtwork(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0

    :cond_2
    move-object v5, v7

    .line 991
    goto :goto_0

    .line 994
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 995
    .local v3, res:Landroid/content/ContentResolver;
    sget-object v5, Lcom/android/music/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    invoke-static {v5, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 996
    .local v4, uri:Landroid/net/Uri;
    if-eqz v4, :cond_8

    .line 997
    const/4 v2, 0x0

    .line 999
    .local v2, in:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 1000
    const/4 v5, 0x0

    sget-object v6, Lcom/android/music/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v2, v5, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 1018
    if-eqz v2, :cond_0

    .line 1019
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1021
    :catch_0
    move-exception v6

    goto :goto_0

    .line 1001
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 1004
    .local v1, ex:Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/music/MusicUtils;->getArtworkFromFile(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1005
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    .line 1006
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    if-nez v5, :cond_5

    .line 1007
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1008
    if-nez v0, :cond_5

    if-eqz p5, :cond_5

    .line 1009
    invoke-static {p0}, Lcom/android/music/MusicUtils;->getDefaultArtwork(Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 1018
    if-eqz v2, :cond_0

    .line 1019
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 1021
    :catch_2
    move-exception v6

    goto :goto_0

    .line 1012
    :cond_4
    if-eqz p5, :cond_5

    .line 1013
    :try_start_4
    invoke-static {p0}, Lcom/android/music/MusicUtils;->getDefaultArtwork(Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 1018
    :cond_5
    if-eqz v2, :cond_6

    .line 1019
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_6
    :goto_1
    move-object v5, v0

    .line 1015
    goto :goto_0

    .line 1016
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #ex:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v5

    .line 1018
    if-eqz v2, :cond_7

    .line 1019
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1023
    :cond_7
    :goto_2
    throw v5

    .end local v2           #in:Ljava/io/InputStream;
    :cond_8
    move-object v5, v7

    .line 1026
    goto :goto_0

    .line 1021
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v1       #ex:Ljava/io/FileNotFoundException;
    .restart local v2       #in:Ljava/io/InputStream;
    :catch_3
    move-exception v5

    goto :goto_1

    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #ex:Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v6

    goto :goto_2
.end method

.method private static getArtworkFromFile(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "context"
    .parameter "songid"
    .parameter "albumid"

    .prologue
    const-wide/16 v7, 0x0

    const-string v6, "r"

    .line 1032
    const/4 v1, 0x0

    .line 1033
    .local v1, bm:Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    check-cast v0, [B

    .line 1034
    .local v0, art:[B
    const/4 v3, 0x0

    .line 1036
    .local v3, path:Ljava/lang/String;
    cmp-long v6, p3, v7

    if-gez v6, :cond_0

    cmp-long v6, p1, v7

    if-gez v6, :cond_0

    .line 1037
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Must specify an album or a song id"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1041
    :cond_0
    cmp-long v6, p3, v7

    if-gez v6, :cond_3

    .line 1042
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "content://media/external/audio/media/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/albumart"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1043
    .local v5, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "r"

    invoke-virtual {v6, v5, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 1044
    .local v4, pfd:Landroid/os/ParcelFileDescriptor;
    if-eqz v4, :cond_1

    .line 1045
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 1046
    .local v2, fd:Ljava/io/FileDescriptor;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1059
    .end local v2           #fd:Ljava/io/FileDescriptor;
    .end local v4           #pfd:Landroid/os/ParcelFileDescriptor;
    .end local v5           #uri:Landroid/net/Uri;
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 1060
    sput-object v1, Lcom/android/music/MusicUtils;->mCachedBit:Landroid/graphics/Bitmap;

    .line 1062
    :cond_2
    return-object v1

    .line 1049
    :cond_3
    :try_start_1
    sget-object v6, Lcom/android/music/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    invoke-static {v6, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 1050
    .restart local v5       #uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "r"

    invoke-virtual {v6, v5, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 1051
    .restart local v4       #pfd:Landroid/os/ParcelFileDescriptor;
    if-eqz v4, :cond_1

    .line 1052
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 1053
    .restart local v2       #fd:Ljava/io/FileDescriptor;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1056
    .end local v2           #fd:Ljava/io/FileDescriptor;
    .end local v4           #pfd:Landroid/os/ParcelFileDescriptor;
    .end local v5           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private static getArtworkQuick(Landroid/content/Context;JII)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "context"
    .parameter "album_id"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 914
    add-int/lit8 p3, p3, -0x1

    .line 915
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 916
    .local v0, res:Landroid/content/ContentResolver;
    sget-object p0, Lcom/android/music/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    .end local p0
    invoke-static {p0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 917
    .local p1, uri:Landroid/net/Uri;
    if-eqz p1, :cond_6

    .line 918
    const/4 p0, 0x0

    .line 920
    .local p0, fd:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    const-string p2, "r"

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 921
    .end local p0           #fd:Landroid/os/ParcelFileDescriptor;
    .local p1, fd:Landroid/os/ParcelFileDescriptor;
    const/4 v0, 0x1

    .line 926
    .local v0, sampleSize:I
    :try_start_1
    sget-object p0, Lcom/android/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    const/4 p2, 0x1

    iput-boolean p2, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 928
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    const/4 p2, 0x0

    sget-object v1, Lcom/android/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    .line 927
    invoke-static {p0, p2, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 929
    sget-object p0, Lcom/android/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/lit8 p2, p0, 0x1

    .line 930
    .local p2, nextWidth:I
    sget-object p0, Lcom/android/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/lit8 p0, p0, 0x1

    .line 931
    .local p0, nextHeight:I
    :goto_0
    if-le p2, p3, :cond_0

    if-gt p0, p4, :cond_5

    .line 937
    :cond_0
    sget-object p0, Lcom/android/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    .end local p0           #nextHeight:I
    iput v0, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 938
    sget-object p0, Lcom/android/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 940
    .end local p2           #nextWidth:I
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    const/4 p2, 0x0

    sget-object v0, Lcom/android/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    .line 939
    .end local v0           #sampleSize:I
    invoke-static {p0, p2, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 942
    .local p0, b:Landroid/graphics/Bitmap;
    if-eqz p0, :cond_3

    .line 944
    sget-object p2, Lcom/android/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget p2, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ne p2, p3, :cond_1

    sget-object p2, Lcom/android/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget p2, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq p2, p4, :cond_3

    .line 945
    :cond_1
    const/4 p2, 0x1

    invoke-static {p0, p3, p4, p2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 947
    .local p2, tmp:Landroid/graphics/Bitmap;
    if-eq p2, p0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    .line 948
    :cond_2
    move-object p0, p2

    .line 956
    .end local p2           #tmp:Landroid/graphics/Bitmap;
    :cond_3
    if-eqz p1, :cond_4

    .line 957
    :try_start_2
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 962
    .end local p0           #b:Landroid/graphics/Bitmap;
    .end local p1           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_4
    :goto_1
    return-object p0

    .line 932
    .restart local v0       #sampleSize:I
    .local p0, nextHeight:I
    .restart local p1       #fd:Landroid/os/ParcelFileDescriptor;
    .local p2, nextWidth:I
    :cond_5
    shl-int/lit8 v0, v0, 0x1

    .line 933
    shr-int/lit8 p2, p2, 0x1

    .line 934
    shr-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 953
    .end local p2           #nextWidth:I
    .local v0, res:Landroid/content/ContentResolver;
    .local p0, fd:Landroid/os/ParcelFileDescriptor;
    .local p1, uri:Landroid/net/Uri;
    :catch_0
    move-exception p1

    .line 956
    .end local v0           #res:Landroid/content/ContentResolver;
    .end local p1           #uri:Landroid/net/Uri;
    :goto_2
    if-eqz p0, :cond_6

    .line 957
    :try_start_3
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 962
    .end local p0           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_6
    :goto_3
    const/4 p0, 0x0

    goto :goto_1

    .line 954
    .restart local v0       #res:Landroid/content/ContentResolver;
    .restart local p0       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local p1       #uri:Landroid/net/Uri;
    :catchall_0
    move-exception p1

    .line 956
    .end local v0           #res:Landroid/content/ContentResolver;
    .end local p1           #uri:Landroid/net/Uri;
    :goto_4
    if-eqz p0, :cond_7

    .line 957
    :try_start_4
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 960
    .end local p0           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_7
    :goto_5
    throw p1

    .line 958
    .local p0, b:Landroid/graphics/Bitmap;
    .local p1, fd:Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception p1

    goto :goto_1

    .end local p1           #fd:Landroid/os/ParcelFileDescriptor;
    .local p0, fd:Landroid/os/ParcelFileDescriptor;
    :catch_2
    move-exception p0

    goto :goto_3

    :catch_3
    move-exception p0

    goto :goto_5

    .line 954
    .end local p0           #fd:Landroid/os/ParcelFileDescriptor;
    .restart local p1       #fd:Landroid/os/ParcelFileDescriptor;
    :catchall_1
    move-exception p0

    move-object v2, p0

    move-object p0, p1

    .end local p1           #fd:Landroid/os/ParcelFileDescriptor;
    .restart local p0       #fd:Landroid/os/ParcelFileDescriptor;
    move-object p1, v2

    goto :goto_4

    .line 953
    .end local p0           #fd:Landroid/os/ParcelFileDescriptor;
    .restart local p1       #fd:Landroid/os/ParcelFileDescriptor;
    :catch_4
    move-exception p0

    move-object p0, p1

    .end local p1           #fd:Landroid/os/ParcelFileDescriptor;
    .restart local p0       #fd:Landroid/os/ParcelFileDescriptor;
    goto :goto_2
.end method

.method static getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 3
    .parameter "context"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 1088
    const-string v1, "com.android.music_preferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1089
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getCachedArtwork(Landroid/content/Context;JLandroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .parameter "context"
    .parameter "artIndex"
    .parameter "defaultArtwork"

    .prologue
    .line 881
    const/4 v2, 0x0

    .line 882
    .local v2, d:Landroid/graphics/drawable/Drawable;
    sget-object v8, Lcom/android/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v8

    .line 883
    :try_start_0
    sget-object v7, Lcom/android/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    .line 882
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 885
    if-nez v2, :cond_0

    .line 886
    move-object v2, p3

    .line 887
    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 888
    .local v4, icon:Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 889
    .local v6, w:I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 890
    .local v3, h:I
    invoke-static {p0, p1, p2, v6, v3}, Lcom/android/music/MusicUtils;->getArtworkQuick(Landroid/content/Context;JII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 891
    .local v1, b:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 892
    new-instance v2, Lcom/android/music/MusicUtils$FastBitmapDrawable;

    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    invoke-direct {v2, v1}, Lcom/android/music/MusicUtils$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 893
    .restart local v2       #d:Landroid/graphics/drawable/Drawable;
    sget-object v7, Lcom/android/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v7

    .line 895
    :try_start_1
    sget-object v8, Lcom/android/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    .line 896
    .local v5, value:Landroid/graphics/drawable/Drawable;
    if-nez v5, :cond_1

    .line 897
    sget-object v8, Lcom/android/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    :goto_0
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 904
    .end local v1           #b:Landroid/graphics/Bitmap;
    .end local v3           #h:I
    .end local v4           #icon:Landroid/graphics/Bitmap;
    .end local v5           #value:Landroid/graphics/drawable/Drawable;
    .end local v6           #w:I
    :cond_0
    return-object v2

    .line 882
    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 899
    .restart local v1       #b:Landroid/graphics/Bitmap;
    .restart local v3       #h:I
    .restart local v4       #icon:Landroid/graphics/Bitmap;
    .restart local v5       #value:Landroid/graphics/drawable/Drawable;
    .restart local v6       #w:I
    :cond_1
    move-object v2, v5

    goto :goto_0

    .line 893
    .end local v5           #value:Landroid/graphics/drawable/Drawable;
    :catchall_1
    move-exception v8

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v8
.end method

.method static getCardId(Landroid/content/Context;)I
    .locals 8
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 1297
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1298
    .local v0, res:Landroid/content/ContentResolver;
    const-string v1, "content://media/external/fs_id"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1299
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 1300
    .local v7, id:I
    if-eqz v6, :cond_0

    .line 1301
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1302
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1303
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1305
    :cond_0
    return v7
.end method

.method protected static getContentURIForPath(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "path"

    .prologue
    .line 720
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentAlbumId()J
    .locals 2

    .prologue
    .line 225
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 227
    :try_start_0
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getAlbumId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 231
    :goto_0
    return-wide v0

    .line 228
    :catch_0
    move-exception v0

    .line 231
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static getCurrentArtistId()J
    .locals 2

    .prologue
    .line 235
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 237
    :try_start_0
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getArtistId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 241
    :goto_0
    return-wide v0

    .line 238
    :catch_0
    move-exception v0

    .line 241
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static getCurrentAudioId()J
    .locals 2

    .prologue
    .line 245
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 247
    :try_start_0
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getAudioId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 251
    :goto_0
    return-wide v0

    .line 248
    :catch_0
    move-exception v0

    .line 251
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static getCurrentShuffleMode()I
    .locals 2

    .prologue
    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, mode:I
    sget-object v1, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 258
    :try_start_0
    sget-object v1, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/android/music/IMediaPlaybackService;->getShuffleMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 262
    :cond_0
    :goto_0
    return v0

    .line 259
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static getDefaultArtwork(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "context"

    .prologue
    .line 1066
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1067
    .local v0, opts:Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1069
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    .line 1068
    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method static getIntPref(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 3
    .parameter "context"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 1074
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1075
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getSongListForAlbum(Landroid/content/Context;J)[J
    .locals 8
    .parameter "context"
    .parameter "id"

    .prologue
    .line 346
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 347
    .local v2, ccols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "album_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 348
    const-string v1, "is_music"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 347
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 349
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 350
    const/4 v4, 0x0

    const-string v5, "track"

    move-object v0, p0

    .line 349
    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 352
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 353
    invoke-static {v6}, Lcom/android/music/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[J

    move-result-object v7

    .line 354
    .local v7, list:[J
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v7

    .line 357
    .end local v7           #list:[J
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/music/MusicUtils;->sEmptyList:[J

    goto :goto_0
.end method

.method public static getSongListForArtist(Landroid/content/Context;J)[J
    .locals 8
    .parameter "context"
    .parameter "id"

    .prologue
    .line 330
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 331
    .local v2, ccols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "artist_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 332
    const-string v1, "is_music"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 331
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 333
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 334
    const/4 v4, 0x0

    .line 335
    const-string v5, "album_key,track"

    move-object v0, p0

    .line 333
    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 337
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 338
    invoke-static {v6}, Lcom/android/music/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[J

    move-result-object v7

    .line 339
    .local v7, list:[J
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v7

    .line 342
    .end local v7           #list:[J
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/music/MusicUtils;->sEmptyList:[J

    goto :goto_0
.end method

.method public static getSongListForCursor(Landroid/database/Cursor;)[J
    .locals 7
    .parameter "cursor"

    .prologue
    .line 310
    if-nez p0, :cond_0

    .line 311
    sget-object v5, Lcom/android/music/MusicUtils;->sEmptyList:[J

    .line 326
    :goto_0
    return-object v5

    .line 313
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 314
    .local v3, len:I
    new-array v4, v3, [J

    .line 315
    .local v4, list:[J
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 316
    const/4 v0, -0x1

    .line 318
    .local v0, colidx:I
    :try_start_0
    const-string v5, "audio_id"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 322
    :goto_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-lt v2, v3, :cond_1

    move-object v5, v4

    .line 326
    goto :goto_0

    .line 319
    .end local v2           #i:I
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 320
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    const-string v5, "_id"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 323
    .end local v1           #ex:Ljava/lang/IllegalArgumentException;
    .restart local v2       #i:I
    :cond_1
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    aput-wide v5, v4, v2

    .line 324
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 322
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public static getSongListForPlaylist(Landroid/content/Context;J)[J
    .locals 8
    .parameter "context"
    .parameter "plid"

    .prologue
    const/4 v3, 0x0

    .line 361
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "audio_id"

    aput-object v1, v2, v0

    .line 362
    .local v2, ccols:[Ljava/lang/String;
    const-string v0, "external"

    invoke-static {v0, p1, p2}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 363
    const-string v5, "play_order"

    move-object v0, p0

    move-object v4, v3

    .line 362
    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 365
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 366
    invoke-static {v6}, Lcom/android/music/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[J

    move-result-object v7

    .line 367
    .local v7, list:[J
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v7

    .line 370
    .end local v7           #list:[J
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/music/MusicUtils;->sEmptyList:[J

    goto :goto_0
.end method

.method public static hideDatabaseError(Landroid/app/Activity;)V
    .locals 3
    .parameter "a"

    .prologue
    const/16 v2, 0x8

    .line 705
    const v1, 0x7f0b0034

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 706
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 707
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 709
    :cond_0
    const v1, 0x7f0b0033

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 710
    if-eqz v0, :cond_1

    .line 711
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 713
    :cond_1
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 714
    if-eqz v0, :cond_2

    .line 715
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 717
    :cond_2
    return-void
.end method

.method public static initAlbumArtCache()V
    .locals 3

    .prologue
    .line 864
    :try_start_0
    sget-object v2, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/android/music/IMediaPlaybackService;->getMediaMountedCount()I

    move-result v1

    .line 865
    .local v1, id:I
    sget v2, Lcom/android/music/MusicUtils;->sArtCacheId:I

    if-eq v1, v2, :cond_0

    .line 866
    invoke-static {}, Lcom/android/music/MusicUtils;->clearAlbumArtCache()V

    .line 867
    sput v1, Lcom/android/music/MusicUtils;->sArtCacheId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 872
    .end local v1           #id:I
    :cond_0
    :goto_0
    return-void

    .line 869
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 870
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isMediaScannerScanning(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 616
    const/4 v7, 0x0

    .line 617
    .local v7, result:Z
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    .line 618
    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "volume"

    aput-object v0, v2, v8

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    .line 617
    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 619
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 620
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_0

    .line 621
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 622
    const-string v0, "external"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 624
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 627
    :cond_1
    return v7
.end method

.method public static isMusicLoaded()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 298
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v0, :cond_1

    .line 300
    :try_start_0
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 304
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 300
    goto :goto_0

    .line 301
    :catch_0
    move-exception v0

    :cond_1
    move v0, v1

    .line 304
    goto :goto_0
.end method

.method public static makeAlbumsLabel(Landroid/content/Context;IIZ)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "numalbums"
    .parameter "numsongs"
    .parameter "isUnknown"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .local v2, songs_albums:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 102
    .local v1, r:Landroid/content/res/Resources;
    if-eqz p3, :cond_1

    .line 103
    if-ne p2, v4, :cond_0

    .line 104
    const/high16 v3, 0x7f08

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 106
    :cond_0
    const/high16 v3, 0x7f09

    invoke-virtual {v1, v3, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, f:Ljava/lang/String;
    sget-object v3, Lcom/android/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 108
    sget-object v3, Lcom/android/music/MusicUtils;->sFormatter:Ljava/util/Formatter;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v0, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 109
    sget-object v3, Lcom/android/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 112
    .end local v0           #f:Ljava/lang/String;
    :cond_1
    const v3, 0x7f090002

    invoke-virtual {v1, v3, p1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    .restart local v0       #f:Ljava/lang/String;
    sget-object v3, Lcom/android/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 114
    sget-object v3, Lcom/android/music/MusicUtils;->sFormatter:Ljava/util/Formatter;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v0, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 115
    sget-object v3, Lcom/android/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 116
    const v3, 0x7f08008d

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static makeAlbumsSongsLabel(Landroid/content/Context;IIZ)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "numalbums"
    .parameter "numsongs"
    .parameter "isUnknown"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .local v2, songs_albums:Ljava/lang/StringBuilder;
    if-ne p2, v7, :cond_0

    .line 135
    const/high16 v3, 0x7f08

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 137
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 138
    .local v1, r:Landroid/content/res/Resources;
    if-nez p3, :cond_1

    .line 139
    const v3, 0x7f090002

    invoke-virtual {v1, v3, p1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, f:Ljava/lang/String;
    sget-object v3, Lcom/android/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 141
    sget-object v3, Lcom/android/music/MusicUtils;->sFormatter:Ljava/util/Formatter;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v0, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 142
    sget-object v3, Lcom/android/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 143
    const v3, 0x7f08008d

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .end local v0           #f:Ljava/lang/String;
    :cond_1
    const/high16 v3, 0x7f09

    invoke-virtual {v1, v3, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    .restart local v0       #f:Ljava/lang/String;
    sget-object v3, Lcom/android/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 147
    sget-object v3, Lcom/android/music/MusicUtils;->sFormatter:Ljava/util/Formatter;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v0, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 148
    sget-object v3, Lcom/android/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static makeInsertItems([JIII)V
    .locals 5
    .parameter "ids"
    .parameter "offset"
    .parameter "len"
    .parameter "base"

    .prologue
    .line 546
    add-int v1, p1, p2

    array-length v2, p0

    if-le v1, v2, :cond_0

    .line 547
    array-length v1, p0

    sub-int p2, v1, p1

    .line 550
    :cond_0
    sget-object v1, Lcom/android/music/MusicUtils;->sContentValuesCache:[Landroid/content/ContentValues;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/music/MusicUtils;->sContentValuesCache:[Landroid/content/ContentValues;

    array-length v1, v1

    if-eq v1, p2, :cond_2

    .line 551
    :cond_1
    new-array v1, p2, [Landroid/content/ContentValues;

    sput-object v1, Lcom/android/music/MusicUtils;->sContentValuesCache:[Landroid/content/ContentValues;

    .line 554
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, p2, :cond_3

    .line 562
    return-void

    .line 555
    :cond_3
    sget-object v1, Lcom/android/music/MusicUtils;->sContentValuesCache:[Landroid/content/ContentValues;

    aget-object v1, v1, v0

    if-nez v1, :cond_4

    .line 556
    sget-object v1, Lcom/android/music/MusicUtils;->sContentValuesCache:[Landroid/content/ContentValues;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    aput-object v2, v1, v0

    .line 559
    :cond_4
    sget-object v1, Lcom/android/music/MusicUtils;->sContentValuesCache:[Landroid/content/ContentValues;

    aget-object v1, v1, v0

    const-string v2, "play_order"

    add-int v3, p3, p1

    add-int/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 560
    sget-object v1, Lcom/android/music/MusicUtils;->sContentValuesCache:[Landroid/content/ContentValues;

    aget-object v1, v1, v0

    const-string v2, "audio_id"

    add-int v3, p1, v0

    aget-wide v3, p0, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 554
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static makePlaylistMenu(Landroid/content/Context;Landroid/view/SubMenu;)V
    .locals 11
    .parameter "context"
    .parameter "sub"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v5, "name"

    .line 414
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    .line 415
    const-string v1, "_id"

    aput-object v1, v2, v9

    .line 416
    const-string v1, "name"

    aput-object v5, v2, v10

    .line 418
    .local v2, cols:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 419
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_1

    .line 420
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "resolver = null"

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    const-string v3, "name != \'\'"

    .line 423
    .local v3, whereclause:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 424
    const/4 v4, 0x0

    .line 425
    const-string v8, "name"

    .line 423
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 426
    .local v6, cur:Landroid/database/Cursor;
    invoke-interface {p1}, Landroid/view/SubMenu;->clear()V

    .line 427
    const/16 v1, 0xc

    const v4, 0x7f08003a

    invoke-interface {p1, v10, v1, v9, v4}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 428
    const/4 v1, 0x4

    const v4, 0x7f08003b

    invoke-interface {p1, v10, v1, v9, v4}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 429
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 431
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 432
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 443
    :cond_2
    if-eqz v6, :cond_0

    .line 444
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 433
    :cond_3
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 434
    .local v7, intent:Landroid/content/Intent;
    const-string v1, "playlist"

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v7, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 438
    const/4 v1, 0x3

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v10, v1, v9, v4}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 440
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1
.end method

.method public static makeTimeString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "secs"

    .prologue
    const-wide/16 v7, 0xe10

    const/4 v4, 0x0

    const-wide/16 v5, 0x3c

    .line 735
    .line 736
    cmp-long v2, p1, v7

    if-gez v2, :cond_0

    const v2, 0x7f080001

    .line 735
    :goto_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 741
    .local v0, durationformat:Ljava/lang/String;
    sget-object v2, Lcom/android/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 743
    sget-object v1, Lcom/android/music/MusicUtils;->sTimeArgs:[Ljava/lang/Object;

    .line 744
    .local v1, timeArgs:[Ljava/lang/Object;
    div-long v2, p1, v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    .line 745
    const/4 v2, 0x1

    div-long v3, p1, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 746
    const/4 v2, 0x2

    div-long v3, p1, v5

    rem-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 747
    const/4 v2, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 748
    const/4 v2, 0x4

    rem-long v3, p1, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 750
    sget-object v2, Lcom/android/music/MusicUtils;->sFormatter:Ljava/util/Formatter;

    invoke-virtual {v2, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 736
    .end local v0           #durationformat:Ljava/lang/String;
    .end local v1           #timeArgs:[Ljava/lang/Object;
    :cond_0
    const v2, 0x7f080002

    goto :goto_0
.end method

.method public static playAll(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v0, 0x0

    .line 758
    invoke-static {p0, p1, v0, v0}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;IZ)V

    .line 759
    return-void
.end method

.method public static playAll(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "position"

    .prologue
    .line 762
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;IZ)V

    .line 763
    return-void
.end method

.method private static playAll(Landroid/content/Context;Landroid/database/Cursor;IZ)V
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "position"
    .parameter "force_shuffle"

    .prologue
    .line 771
    invoke-static {p1}, Lcom/android/music/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[J

    move-result-object v0

    .line 772
    .local v0, list:[J
    invoke-static {p0, v0, p2, p3}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;[JIZ)V

    .line 773
    return-void
.end method

.method public static playAll(Landroid/content/Context;[JI)V
    .locals 1
    .parameter "context"
    .parameter "list"
    .parameter "position"

    .prologue
    .line 766
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;[JIZ)V

    .line 767
    return-void
.end method

.method private static playAll(Landroid/content/Context;[JIZ)V
    .locals 4
    .parameter "context"
    .parameter "list"
    .parameter "position"
    .parameter "force_shuffle"

    .prologue
    .line 776
    array-length v0, p1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-nez v0, :cond_1

    .line 777
    :cond_0
    const-string p3, "MusicUtils"

    .end local p3
    const-string v0, "attempt to play empty song list"

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    const p3, 0x7f08003d

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    array-length p1, p1

    .end local p1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, p3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 780
    .local p1, message:Ljava/lang/String;
    const/4 p3, 0x0

    invoke-static {p0, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .end local p0
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 811
    .end local p1           #message:Ljava/lang/String;
    :goto_0
    return-void

    .line 784
    .restart local p0
    .local p1, list:[J
    .restart local p3
    :cond_1
    if-eqz p3, :cond_2

    .line 785
    :try_start_0
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 787
    :cond_2
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getAudioId()J

    move-result-wide v0

    .line 788
    .local v0, curid:J
    sget-object v2, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/android/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v2

    .line 789
    .local v2, curpos:I
    const/4 v3, -0x1

    if-eq p2, v3, :cond_3

    if-ne v2, p2, :cond_3

    aget-wide v2, p1, p2

    .end local v2           #curpos:I
    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 793
    .end local v0           #curid:J
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getQueue()[J

    move-result-object v0

    .line 794
    .local v0, playlist:[J
    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    .end local v0           #playlist:[J
    if-eqz v0, :cond_3

    .line 796
    sget-object p1, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    .end local p1           #list:[J
    invoke-interface {p1}, Lcom/android/music/IMediaPlaybackService;->play()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    new-instance p1, Landroid/content/Intent;

    const-string p3, "com.android.music.PLAYBACK_VIEWER"

    .end local p3
    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 808
    const/high16 p3, 0x400

    invoke-virtual {p1, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 809
    .local p1, intent:Landroid/content/Intent;
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 800
    .local p1, list:[J
    .restart local p3
    :cond_3
    if-gez p2, :cond_4

    .line 801
    const/4 p2, 0x0

    .line 803
    :cond_4
    :try_start_1
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz p3, :cond_5

    const/4 p3, -0x1

    .end local p3
    :goto_1
    invoke-interface {v0, p1, p3}, Lcom/android/music/IMediaPlaybackService;->open([JI)V

    .line 804
    sget-object p1, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    .end local p1           #list:[J
    invoke-interface {p1}, Lcom/android/music/IMediaPlaybackService;->play()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 807
    new-instance p1, Landroid/content/Intent;

    const-string p3, "com.android.music.PLAYBACK_VIEWER"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 808
    const/high16 p3, 0x400

    invoke-virtual {p1, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 809
    .local p1, intent:Landroid/content/Intent;
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move-object p0, p1

    .end local p1           #intent:Landroid/content/Intent;
    .local p0, intent:Landroid/content/Intent;
    goto :goto_0

    .local p0, context:Landroid/content/Context;
    .local p1, list:[J
    .restart local p3
    :cond_5
    move p3, p2

    .line 803
    goto :goto_1

    .line 805
    .end local p1           #list:[J
    .end local p3
    :catch_0
    move-exception p1

    .line 807
    new-instance p1, Landroid/content/Intent;

    const-string p3, "com.android.music.PLAYBACK_VIEWER"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 808
    const/high16 p3, 0x400

    invoke-virtual {p1, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 809
    .local p1, intent:Landroid/content/Intent;
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move-object p0, p1

    .end local p1           #intent:Landroid/content/Intent;
    .local p0, intent:Landroid/content/Intent;
    goto :goto_0

    .line 806
    .local p0, context:Landroid/content/Context;
    :catchall_0
    move-exception p1

    move-object p3, p1

    .line 807
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.android.music.PLAYBACK_VIEWER"

    .end local p2
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 808
    const/high16 p2, 0x400

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 809
    .restart local p1       #intent:Landroid/content/Intent;
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 810
    throw p3
.end method

.method public static playPlaylist(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "plid"

    .prologue
    .line 374
    invoke-static {p0, p1, p2}, Lcom/android/music/MusicUtils;->getSongListForPlaylist(Landroid/content/Context;J)[J

    move-result-object v0

    .line 375
    .local v0, list:[J
    if-eqz v0, :cond_0

    .line 376
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;[JIZ)V

    .line 378
    :cond_0
    return-void
.end method

.method static processTabClick(Landroid/app/Activity;Landroid/view/View;I)V
    .locals 3
    .parameter "a"
    .parameter "v"
    .parameter "current"

    .prologue
    .line 1180
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1181
    .local v0, id:I
    if-ne v0, p2, :cond_1

    .line 1192
    :cond_0
    :goto_0
    return-void

    .line 1185
    :cond_1
    const v2, 0x7f0b0017

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TabWidget;

    .line 1187
    .local v1, ll:Landroid/widget/TabWidget;
    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->activateTab(Landroid/app/Activity;I)V

    .line 1188
    const v2, 0x7f0b001c

    if-eq v0, v2, :cond_0

    .line 1189
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TabWidget;->setCurrentTab(I)V

    .line 1190
    const-string v2, "activetab"

    invoke-static {p0, v2, v0}, Lcom/android/music/MusicUtils;->setIntPref(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 612
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 8
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "limit"

    .prologue
    const/4 v7, 0x0

    .line 597
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 598
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    move-object v1, v7

    .line 606
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :goto_0
    return-object v1

    .line 601
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :cond_0
    if-lez p6, :cond_1

    .line 602
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "limit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    :cond_1
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 604
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 605
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v1

    move-object v6, v1

    .local v6, ex:Ljava/lang/UnsupportedOperationException;
    move-object v1, v7

    .line 606
    goto :goto_0
.end method

.method static setBackground(Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 14
    .parameter "v"
    .parameter "bm"

    .prologue
    .line 1261
    if-nez p1, :cond_0

    .line 1262
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1294
    .end local p1
    :goto_0
    return-void

    .line 1266
    .restart local p1
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    .line 1267
    .local v9, vwidth:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 1268
    .local v8, vheight:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 1269
    .local v2, bwidth:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 1270
    .local v1, bheight:I
    int-to-float v0, v9

    int-to-float v3, v2

    div-float/2addr v0, v3

    .line 1271
    .local v0, scalex:F
    int-to-float v3, v8

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 1272
    .local v3, scaley:F
    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .end local v0           #scalex:F
    const v3, 0x3fa66666

    mul-float v7, v0, v3

    .line 1274
    .local v7, scale:F
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1275
    .end local v3           #scaley:F
    .local v0, config:Landroid/graphics/Bitmap$Config;
    invoke-static {v9, v8, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1276
    .local v0, bg:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1277
    .local v3, c:Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 1278
    .local v6, paint:Landroid/graphics/Paint;
    const/4 v4, 0x1

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1279
    const/4 v4, 0x1

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1280
    new-instance v5, Landroid/graphics/ColorMatrix;

    invoke-direct {v5}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 1281
    .local v5, greymatrix:Landroid/graphics/ColorMatrix;
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 1282
    new-instance v4, Landroid/graphics/ColorMatrix;

    invoke-direct {v4}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 1283
    .local v4, darkmatrix:Landroid/graphics/ColorMatrix;
    const v10, 0x3e99999a

    const v11, 0x3e99999a

    const v12, 0x3e99999a

    const/high16 v13, 0x3f80

    invoke-virtual {v4, v10, v11, v12, v13}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    .line 1284
    invoke-virtual {v5, v4}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 1285
    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    .end local v4           #darkmatrix:Landroid/graphics/ColorMatrix;
    invoke-direct {v4, v5}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 1286
    .local v4, filter:Landroid/graphics/ColorFilter;
    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1287
    new-instance v4, Landroid/graphics/Matrix;

    .end local v4           #filter:Landroid/graphics/ColorFilter;
    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 1288
    .local v4, matrix:Landroid/graphics/Matrix;
    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    .end local v2           #bwidth:I
    int-to-float v2, v2

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    .end local v1           #bheight:I
    int-to-float v1, v1

    invoke-virtual {v4, v2, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1289
    const/high16 v1, 0x4120

    invoke-virtual {v4, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1290
    invoke-virtual {v4, v7, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1291
    div-int/lit8 v1, v9, 0x2

    int-to-float v1, v1

    div-int/lit8 v2, v8, 0x2

    int-to-float v2, v2

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1292
    invoke-virtual {v3, p1, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1293
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-direct {p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method static setIntPref(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .parameter "context"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1080
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1081
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1082
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1083
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1084
    return-void
.end method

.method public static setPartyShuffleMenuIcon(Landroid/view/Menu;)V
    .locals 4
    .parameter "menu"

    .prologue
    const v3, 0x7f020039

    .line 280
    const/16 v2, 0x8

    invoke-interface {p0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 281
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 282
    invoke-static {}, Lcom/android/music/MusicUtils;->getCurrentShuffleMode()I

    move-result v1

    .line 283
    .local v1, shuffle:I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 284
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 285
    const v2, 0x7f080006

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 291
    .end local v1           #shuffle:I
    :cond_0
    :goto_0
    return-void

    .line 287
    .restart local v1       #shuffle:I
    :cond_1
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 288
    const v2, 0x7f080005

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method static setRingtone(Landroid/content/Context;J)V
    .locals 8
    .parameter "context"
    .parameter "id"

    .prologue
    .line 1093
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1095
    .local v6, resolver:Landroid/content/ContentResolver;
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 1097
    .local v7, ringUri:Landroid/net/Uri;
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1098
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "is_ringtone"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    const-string v1, "is_alarm"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v6, v7, v0, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1107
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    .end local v0           #values:Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 1108
    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    .line 1109
    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    .line 1110
    const-string v1, "title"

    aput-object v1, v2, v0

    .line 1113
    .local v2, cols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1114
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1115
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 1114
    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 1117
    .local p1, cursor:Landroid/database/Cursor;
    if-eqz p1, :cond_0

    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1119
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1120
    const-string p2, "ringtone"

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, p2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1121
    const p2, 0x7f080037

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .end local v2           #cols:[Ljava/lang/String;
    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1122
    .local p2, message:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .end local p0
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1125
    .end local p2           #message:Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_1

    .line 1126
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1129
    .end local v3           #where:Ljava/lang/String;
    .end local p1           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-void

    .line 1101
    .restart local p0
    .local p1, id:J
    :catch_0
    move-exception p0

    .line 1103
    .local p0, ex:Ljava/lang/UnsupportedOperationException;
    const-string p0, "MusicUtils"

    .end local p0           #ex:Ljava/lang/UnsupportedOperationException;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "couldn\'t set ringtone flag for id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #id:J
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1124
    .restart local v3       #where:Ljava/lang/String;
    .local p1, cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception p0

    .line 1125
    if-eqz p1, :cond_2

    .line 1126
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1128
    :cond_2
    throw p0
.end method

.method public static setSpinnerState(Landroid/app/Activity;)V
    .locals 3
    .parameter "a"

    .prologue
    const/4 v2, 0x5

    .line 631
    invoke-static {p0}, Lcom/android/music/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 635
    const/4 v1, -0x3

    .line 633
    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 637
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 639
    const/4 v1, -0x1

    .line 637
    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 646
    :goto_0
    return-void

    .line 642
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 644
    const/4 v1, -0x2

    .line 642
    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    goto :goto_0
.end method

.method public static shuffleAll(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 754
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;IZ)V

    .line 755
    return-void
.end method

.method public static togglePartyShuffle()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 266
    sget-object v1, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 267
    invoke-static {}, Lcom/android/music/MusicUtils;->getCurrentShuffleMode()I

    move-result v0

    .line 269
    .local v0, shuffle:I
    if-ne v0, v2, :cond_1

    .line 270
    :try_start_0
    sget-object v1, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 277
    .end local v0           #shuffle:I
    :cond_0
    :goto_0
    return-void

    .line 272
    .restart local v0       #shuffle:I
    :cond_1
    sget-object v1, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/music/IMediaPlaybackService;->setShuffleMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 274
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static unbindFromService(Lcom/android/music/MusicUtils$ServiceToken;)V
    .locals 4
    .parameter "token"

    .prologue
    const-string v3, "MusicUtils"

    .line 184
    if-nez p0, :cond_1

    .line 185
    const-string v2, "MusicUtils"

    const-string v2, "Trying to unbind with null token"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/android/music/MusicUtils$ServiceToken;->mWrappedContext:Landroid/content/ContextWrapper;

    .line 189
    .local v0, cw:Landroid/content/ContextWrapper;
    sget-object v2, Lcom/android/music/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/music/MusicUtils$ServiceBinder;

    .line 190
    .local v1, sb:Lcom/android/music/MusicUtils$ServiceBinder;
    if-nez v1, :cond_2

    .line 191
    const-string v2, "MusicUtils"

    const-string v2, "Trying to unbind for unknown Context"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 194
    :cond_2
    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 195
    sget-object v2, Lcom/android/music/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    const/4 v2, 0x0

    sput-object v2, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    goto :goto_0
.end method

.method static updateButtonBar(Landroid/app/Activity;I)Z
    .locals 9
    .parameter "a"
    .parameter "highlight"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1134
    const v6, 0x7f0b0017

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TabWidget;

    .line 1135
    .local v3, ll:Landroid/widget/TabWidget;
    const/4 v5, 0x0

    .line 1136
    .local v5, withtabs:Z
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1137
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 1138
    const-string v6, "withtabs"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 1141
    :cond_0
    if-eqz p1, :cond_1

    if-nez v5, :cond_3

    .line 1142
    :cond_1
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 1176
    :cond_2
    return v5

    .line 1144
    :cond_3
    if-eqz v5, :cond_4

    .line 1145
    invoke-virtual {v3, v7}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 1147
    :cond_4
    invoke-virtual {v3}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v6

    sub-int v0, v6, v8

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_2

    .line 1149
    invoke-virtual {v3, v0}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1150
    .local v4, v:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    if-ne v6, p1, :cond_6

    move v2, v8

    .line 1151
    .local v2, isActive:Z
    :goto_1
    if-eqz v2, :cond_5

    .line 1152
    invoke-virtual {v3, v0}, Landroid/widget/TabWidget;->setCurrentTab(I)V

    .line 1153
    sput v0, Lcom/android/music/MusicUtils;->sActiveTabIndex:I

    .line 1155
    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1156
    new-instance v6, Lcom/android/music/MusicUtils$1;

    invoke-direct {v6, v3}, Lcom/android/music/MusicUtils$1;-><init>(Landroid/widget/TabWidget;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1170
    new-instance v6, Lcom/android/music/MusicUtils$2;

    invoke-direct {v6, v3}, Lcom/android/music/MusicUtils$2;-><init>(Landroid/widget/TabWidget;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1147
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v2           #isActive:Z
    :cond_6
    move v2, v7

    .line 1150
    goto :goto_1
.end method

.method static updateNowPlaying(Landroid/app/Activity;)V
    .locals 10
    .parameter "a"

    .prologue
    .line 1224
    const v6, 0x7f0b0027

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1225
    .local v3, nowPlayingView:Landroid/view/View;
    if-nez v3, :cond_0

    .line 1257
    :goto_0
    return-void

    .line 1229
    :cond_0
    const/4 v5, 0x0

    .line 1230
    .local v5, withtabs:Z
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1231
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 1232
    const-string v6, "withtabs"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 1234
    :cond_1
    sget-object v6, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v6, :cond_3

    sget-object v6, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/android/music/IMediaPlaybackService;->getAudioId()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    .line 1235
    const v6, 0x7f0b0002

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1236
    .local v4, title:Landroid/widget/TextView;
    const v6, 0x7f0b0003

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1237
    .local v0, artist:Landroid/widget/TextView;
    sget-object v6, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/android/music/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1238
    sget-object v6, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/android/music/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v1

    .line 1239
    .local v1, artistName:Ljava/lang/String;
    const-string v6, "<unknown>"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1240
    const v6, 0x7f08002e

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1242
    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1245
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1246
    new-instance v6, Lcom/android/music/MusicUtils$3;

    invoke-direct {v6}, Lcom/android/music/MusicUtils$3;-><init>()V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1254
    .end local v0           #artist:Landroid/widget/TextView;
    .end local v1           #artistName:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #title:Landroid/widget/TextView;
    :catch_0
    move-exception v6

    .line 1256
    :cond_3
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
