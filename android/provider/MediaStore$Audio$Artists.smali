.class public final Landroid/provider/MediaStore$Audio$Artists;
.super Ljava/lang/Object;
.source "MediaStore.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/MediaStore$Audio$ArtistColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore$Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Artists"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/MediaStore$Audio$Artists$Albums;
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/artists"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "artist_key"

.field public static final ENTRY_CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/artist"

.field public static final EXTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final INTERNAL_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1426
    const-string v0, "internal"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Artists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1425
    sput-object v0, Landroid/provider/MediaStore$Audio$Artists;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1433
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Artists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1432
    sput-object v0, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1409
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter

    .prologue
    .line 1418
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://media/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1419
    const-string v1, "/audio/artists"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1418
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
