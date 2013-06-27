.class public Lcom/android/music/MusicUtils$ServiceToken;
.super Ljava/lang/Object;
.source "MusicUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MusicUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceToken"
.end annotation


# instance fields
.field mWrappedContext:Landroid/content/ContextWrapper;


# direct methods
.method constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p1, p0, Lcom/android/music/MusicUtils$ServiceToken;->mWrappedContext:Landroid/content/ContextWrapper;

    .line 194
    return-void
.end method
