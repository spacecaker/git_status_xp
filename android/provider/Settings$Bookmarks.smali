.class public final Landroid/provider/Settings$Bookmarks;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Bookmarks"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final FOLDER:Ljava/lang/String; = "folder"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final INTENT:Ljava/lang/String; = "intent"

.field public static final ORDERING:Ljava/lang/String; = "ordering"

.field public static final SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final TAG:Ljava/lang/String; = "Bookmarks"

.field public static final TITLE:Ljava/lang/String; = "title"

.field private static final sIntentProjection:[Ljava/lang/String; = null

.field private static final sShortcutProjection:[Ljava/lang/String; = null

.field private static final sShortcutSelection:Ljava/lang/String; = "shortcut=?"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4991
    const-string v0, "content://settings/bookmarks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4990
    sput-object v0, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    .line 5043
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "intent"

    aput-object v1, v0, v2

    sput-object v0, Landroid/provider/Settings$Bookmarks;->sIntentProjection:[Ljava/lang/String;

    .line 5044
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "shortcut"

    aput-object v1, v0, v3

    sput-object v0, Landroid/provider/Settings$Bookmarks;->sShortcutProjection:[Ljava/lang/String;

    .line 4983
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4983
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Landroid/content/ContentResolver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;CI)Landroid/net/Uri;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5107
    if-eqz p4, :cond_2

    .line 5108
    sget-object v1, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    .line 5109
    sget-object v2, Landroid/provider/Settings$Bookmarks;->sShortcutProjection:[Ljava/lang/String;

    const-string/jumbo v3, "shortcut=?"

    .line 5110
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    .line 5108
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 5112
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5113
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-gtz v1, :cond_6

    .line 5120
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 5124
    :cond_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5125
    if-eqz p2, :cond_3

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5126
    :cond_3
    if-eqz p3, :cond_4

    const-string v1, "folder"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5127
    :cond_4
    const-string v1, "intent"

    invoke-virtual {p1}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5128
    if-eqz p4, :cond_5

    const-string/jumbo v1, "shortcut"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5129
    :cond_5
    const-string/jumbo v1, "ordering"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5130
    sget-object v1, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 5114
    :cond_6
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->deleteRow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5115
    const-string v1, "Bookmarks"

    const-string v2, "Could not delete existing shortcut row"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5119
    :catchall_0
    move-exception v1

    .line 5120
    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 5121
    :cond_7
    throw v1
.end method

.method public static getIntentForShortcut(Landroid/content/ContentResolver;C)Landroid/content/Intent;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 5059
    const/4 v6, 0x0

    .line 5061
    sget-object v1, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    .line 5062
    sget-object v2, Landroid/provider/Settings$Bookmarks;->sIntentProjection:[Ljava/lang/String;

    const-string/jumbo v3, "shortcut=?"

    .line 5063
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const-string/jumbo v5, "ordering"

    move-object v0, p0

    .line 5061
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v6

    .line 5066
    :goto_0
    if-nez v1, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 5078
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 5081
    :cond_1
    return-object v1

    .line 5068
    :cond_2
    :try_start_1
    const-string v2, "intent"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5069
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    .line 5072
    :catch_0
    move-exception v2

    .line 5074
    :try_start_2
    const-string v3, "Bookmarks"

    const-string v4, "Intent column not found"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 5077
    :catchall_0
    move-exception v1

    .line 5078
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 5079
    :cond_3
    throw v1

    .line 5070
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public static getLabelForFolder(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5145
    return-object p1
.end method

.method public static getTitle(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v2, -0x1

    const-string v3, ""

    .line 5160
    const-string/jumbo v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 5161
    const-string v1, "intent"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 5162
    if-eq v0, v2, :cond_0

    if-ne v1, v2, :cond_1

    .line 5163
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 5164
    const-string v1, "The cursor must contain the TITLE and INTENT columns."

    .line 5163
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5167
    :cond_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5168
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5186
    :goto_0
    return-object v0

    .line 5172
    :cond_2
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5173
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5174
    const-string v0, ""

    move-object v0, v3

    goto :goto_0

    .line 5179
    :cond_3
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 5184
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 5185
    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 5186
    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 5181
    :catch_0
    move-exception v0

    const-string v0, ""

    move-object v0, v3

    goto :goto_0

    .line 5186
    :cond_4
    const-string v0, ""

    move-object v0, v3

    goto :goto_0
.end method
