.class Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/TrackBrowserActivity$TrackListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TrackQueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;


# direct methods
.method constructor <init>(Lcom/android/music/TrackBrowserActivity$TrackListAdapter;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "res"

    .prologue
    .line 1781
    iput-object p1, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;->this$0:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    .line 1782
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1783
    return-void
.end method


# virtual methods
.method public doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 10
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "orderBy"
    .parameter "async"

    .prologue
    .line 1788
    if-eqz p6, :cond_0

    .line 1791
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    const-string v2, "100"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 1792
    .local v3, limituri:Landroid/net/Uri;
    new-instance v2, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;

    invoke-direct {v2, p0}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;-><init>(Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;)V

    .line 1793
    .local v2, args:Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;
    iput-object p1, v2, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;->uri:Landroid/net/Uri;

    .line 1794
    iput-object p2, v2, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;->projection:[Ljava/lang/String;

    .line 1795
    iput-object p3, v2, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;->selection:Ljava/lang/String;

    .line 1796
    iput-object p4, v2, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 1797
    iput-object p5, v2, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;->orderBy:Ljava/lang/String;

    .line 1799
    const/4 v1, 0x0

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    const/4 v0, 0x0

    .line 1802
    .end local v2           #args:Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;
    .end local v3           #limituri:Landroid/net/Uri;
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;->this$0:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;
    invoke-static {v0}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->access$1000(Lcom/android/music/TrackBrowserActivity$TrackListAdapter;)Lcom/android/music/TrackBrowserActivity;

    move-result-object v4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-static/range {v4 .. v9}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 10
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v2, 0x1

    .line 1811
    invoke-static {}, Lcom/android/music/TrackBrowserActivity;->access$1100()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1813
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;->this$0:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;
    invoke-static {v1}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->access$1000(Lcom/android/music/TrackBrowserActivity$TrackListAdapter;)Lcom/android/music/TrackBrowserActivity;

    move-result-object v1

    if-eqz p2, :cond_2

    move v3, v2

    :goto_0
    invoke-virtual {v1, p3, v3}, Lcom/android/music/TrackBrowserActivity;->init(Landroid/database/Cursor;Z)V

    .line 1815
    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/16 v3, 0x64

    if-lt v1, v3, :cond_1

    .line 1816
    move-object v0, p2

    check-cast v0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;

    move-object v9, v0

    .line 1817
    .local v9, args:Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;
    const/4 v3, 0x0

    iget-object v4, v9, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;->uri:Landroid/net/Uri;

    iget-object v5, v9, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;->projection:[Ljava/lang/String;

    iget-object v6, v9, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;->selection:Ljava/lang/String;

    iget-object v7, v9, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v8, v9, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;->orderBy:Ljava/lang/String;

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1820
    .end local v9           #args:Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;
    :cond_1
    return-void

    .line 1813
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method
