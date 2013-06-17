.class public Lcom/sec/android/app/camera/MenuResourceBundle;
.super Ljava/lang/Object;
.source "MenuResourceBundle.java"


# instance fields
.field private resourceIds:[I


# direct methods
.method public varargs constructor <init>([I)V
    .locals 1
    .parameter "ids"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceBundle;->resourceIds:[I

    .line 27
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuResourceBundle;->resourceIds:[I

    .line 28
    return-void
.end method


# virtual methods
.method public getResourceID(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceBundle;->resourceIds:[I

    aget v0, v0, p1

    return v0
.end method
