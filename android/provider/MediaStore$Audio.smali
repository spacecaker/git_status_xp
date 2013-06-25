.class public final Landroid/provider/MediaStore$Audio;
.super Ljava/lang/Object;
.source "MediaStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Audio"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/MediaStore$Audio$AlbumColumns;,
        Landroid/provider/MediaStore$Audio$AlbumartistColumns;,
        Landroid/provider/MediaStore$Audio$Albumartists;,
        Landroid/provider/MediaStore$Audio$Albums;,
        Landroid/provider/MediaStore$Audio$ArtistColumns;,
        Landroid/provider/MediaStore$Audio$Artists;,
        Landroid/provider/MediaStore$Audio$AudioColumns;,
        Landroid/provider/MediaStore$Audio$Genres;,
        Landroid/provider/MediaStore$Audio$GenresColumns;,
        Landroid/provider/MediaStore$Audio$Media;,
        Landroid/provider/MediaStore$Audio$Playlists;,
        Landroid/provider/MediaStore$Audio$PlaylistsColumns;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static keyFor(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x2e

    const/4 v4, 0x0

    const-string v5, ""

    const-string v6, "\u0001"

    .line 1032
    if-eqz p0, :cond_8

    .line 1034
    const-string v0, "<unknown>"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1035
    const-string v0, "\u0001"

    move-object v0, v6

    .line 1079
    :goto_0
    return-object v0

    .line 1039
    :cond_0
    const-string v0, "\u0001"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1040
    const/4 v0, 0x1

    .line 1042
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 1043
    const-string/jumbo v2, "the "

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1044
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1046
    :cond_1
    const-string v2, "an "

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1047
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1049
    :cond_2
    const-string v2, "a "

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1050
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1052
    :cond_3
    const-string v2, ", the"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, ",the"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1053
    const-string v2, ", an"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, ",an"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1054
    const-string v2, ", a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, ",a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1055
    :cond_4
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1057
    :cond_5
    const-string v2, "[\\[\\]\\(\\)\"\'.,?!]"

    const-string v3, ""

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1058
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 1062
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1063
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1064
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1065
    :goto_2
    if-lt v4, v3, :cond_6

    .line 1069
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1070
    invoke-static {v1}, Landroid/database/DatabaseUtils;->getCollationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1071
    if-eqz v0, :cond_9

    .line 1072
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u0001"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1066
    :cond_6
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1067
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1065
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1076
    :cond_7
    const-string v0, ""

    move-object v0, v5

    goto/16 :goto_0

    .line 1079
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_9
    move-object v0, v1

    goto/16 :goto_0

    :cond_a
    move v0, v4

    goto/16 :goto_1
.end method
