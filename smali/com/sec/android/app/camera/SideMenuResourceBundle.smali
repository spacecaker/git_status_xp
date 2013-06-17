.class public Lcom/sec/android/app/camera/SideMenuResourceBundle;
.super Ljava/lang/Object;
.source "SideMenuResourceBundle.java"


# instance fields
.field private resourceIds:[I


# direct methods
.method public varargs constructor <init>([I)V
    .locals 1
    .parameter "ids"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/SideMenuResourceBundle;->resourceIds:[I

    .line 32
    iput-object p1, p0, Lcom/sec/android/app/camera/SideMenuResourceBundle;->resourceIds:[I

    .line 33
    return-void
.end method


# virtual methods
.method public getButtons()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, buttons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x4

    .line 51
    .local v1, ix:I
    iget-object v2, p0, Lcom/sec/android/app/camera/SideMenuResourceBundle;->resourceIds:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #buttons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .restart local v0       #buttons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/SideMenuResourceBundle;->resourceIds:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 55
    if-eqz v0, :cond_1

    .line 57
    iget-object v2, p0, Lcom/sec/android/app/camera/SideMenuResourceBundle;->resourceIds:[I

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    :cond_2
    return-object v0
.end method

.method public getResourceId(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/camera/SideMenuResourceBundle;->resourceIds:[I

    aget v0, v0, p1

    return v0
.end method
