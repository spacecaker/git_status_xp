.class public Lcom/broadcom/bt/service/map/MapMessageIdMap;
.super Ljava/lang/Object;
.source "MapMessageIdMap.java"


# static fields
.field private static final D:Z = false

.field public static final MAP_MSG_ID_INVALID:Ljava/lang/String; = "0"

.field private static final TAG:Ljava/lang/String; = "MapMessageIdMap"


# instance fields
.field protected lNextMessageId:J

.field protected mIDToFolderMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mReverseMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MapMessageIdMap;->mIDToFolderMap:Ljava/util/Hashtable;

    .line 32
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MapMessageIdMap;->mMap:Ljava/util/Hashtable;

    .line 33
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MapMessageIdMap;->mReverseMap:Ljava/util/Hashtable;

    .line 34
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/broadcom/bt/service/map/MapMessageIdMap;->lNextMessageId:J

    .line 45
    return-void
.end method


# virtual methods
.method public getFolderEntry(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "sID"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapMessageIdMap;->mIDToFolderMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getKey(Ljava/lang/String;)J
    .locals 4
    .parameter "sValue"

    .prologue
    .line 119
    const-wide/16 v1, 0x0

    .line 121
    .local v1, lret:J
    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapMessageIdMap;->mReverseMap:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 122
    .local v0, l:Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 126
    :cond_0
    return-wide v1
.end method

.method public declared-synchronized getNextMessageID()J
    .locals 6

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/broadcom/bt/service/map/MapMessageIdMap;->lNextMessageId:J

    .line 50
    .local v0, lRet:J
    iget-wide v2, p0, Lcom/broadcom/bt/service/map/MapMessageIdMap;->lNextMessageId:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/broadcom/bt/service/map/MapMessageIdMap;->lNextMessageId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-wide v0

    .line 49
    .end local v0           #lRet:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getValue(J)Ljava/lang/String;
    .locals 2
    .parameter "lKey"

    .prologue
    .line 112
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    .line 113
    .local v0, l:Ljava/lang/Long;
    iget-object v1, p0, Lcom/broadcom/bt/service/map/MapMessageIdMap;->mMap:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public putEntry(JLjava/lang/String;)V
    .locals 2
    .parameter "lKey"
    .parameter "sValue"

    .prologue
    .line 56
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    .line 57
    .local v0, l:Ljava/lang/Long;
    iget-object v1, p0, Lcom/broadcom/bt/service/map/MapMessageIdMap;->mMap:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/broadcom/bt/service/map/MapMessageIdMap;->mMap:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v1, p0, Lcom/broadcom/bt/service/map/MapMessageIdMap;->mReverseMap:Ljava/util/Hashtable;

    invoke-virtual {v1, p3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_0
    return-void
.end method

.method public putFolderEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "sID"
    .parameter "sFolder"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapMessageIdMap;->mIDToFolderMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public removeEntry(J)V
    .locals 3
    .parameter "lKey"

    .prologue
    .line 87
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    .line 89
    .local v0, l:Ljava/lang/Long;
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapMessageIdMap;->mMap:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapMessageIdMap;->mMap:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 92
    .local v1, sValue:Ljava/lang/String;
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapMessageIdMap;->mMap:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapMessageIdMap;->mReverseMap:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .end local v1           #sValue:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public removeEntry(Ljava/lang/String;)V
    .locals 2
    .parameter "sValue"

    .prologue
    .line 101
    iget-object v1, p0, Lcom/broadcom/bt/service/map/MapMessageIdMap;->mReverseMap:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/broadcom/bt/service/map/MapMessageIdMap;->mReverseMap:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 104
    .local v0, lKey:Ljava/lang/Long;
    iget-object v1, p0, Lcom/broadcom/bt/service/map/MapMessageIdMap;->mMap:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .end local v0           #lKey:Ljava/lang/Long;
    :cond_0
    return-void
.end method

.method public removeFolderEntry(Ljava/lang/String;)V
    .locals 1
    .parameter "sID"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapMessageIdMap;->mIDToFolderMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method
