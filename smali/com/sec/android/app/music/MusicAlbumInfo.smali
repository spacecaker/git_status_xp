.class public Lcom/sec/android/app/music/MusicAlbumInfo;
.super Ljava/lang/Object;
.source "MusicAlbumInfo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/app/music/MusicAlbumInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAlbum:Ljava/lang/String;

.field public mAlbumID:I

.field public mArtist:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/sec/android/app/music/MusicAlbumInfo$1;

    invoke-direct {v0}, Lcom/sec/android/app/music/MusicAlbumInfo$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/music/MusicAlbumInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/music/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/sec/android/app/music/MusicAlbumInfo;->mAlbum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/sec/android/app/music/MusicAlbumInfo;->mArtist:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget v0, p0, Lcom/sec/android/app/music/MusicAlbumInfo;->mAlbumID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    return-void
.end method
