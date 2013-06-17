.class public Lcom/sec/android/app/camera/SettingsMenuResourceBundle;
.super Ljava/lang/Object;
.source "SettingsMenuResourceBundle.java"


# instance fields
.field private resourceIds:[I


# direct methods
.method public varargs constructor <init>([I)V
    .locals 1
    .parameter "ids"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;->resourceIds:[I

    .line 33
    iput-object p1, p0, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;->resourceIds:[I

    .line 34
    return-void
.end method


# virtual methods
.method public getResourceID(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;->resourceIds:[I

    aget v0, v0, p1

    return v0
.end method

.method public getStringResources(Ljava/util/Map;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, mButtonTextStringIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;->resourceIds:[I

    array-length v1, v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    .line 53
    :cond_0
    return-void

    .line 49
    :cond_1
    const/4 v0, 0x3

    .local v0, ix:I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;->resourceIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;->resourceIds:[I

    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;->resourceIds:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method
