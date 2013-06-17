.class public Lcom/sec/android/app/camera/BitmapCache$Entry;
.super Ljava/lang/Object;
.source "ReviewImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/BitmapCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field mPos:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1157
    invoke-virtual {p0}, Lcom/sec/android/app/camera/BitmapCache$Entry;->clear()V

    .line 1158
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1160
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/BitmapCache$Entry;->mPos:I

    .line 1161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/BitmapCache$Entry;->mBitmap:Landroid/graphics/Bitmap;

    .line 1162
    return-void
.end method
