.class public abstract Lcom/android/internal/telephony/IccRecords;
.super Landroid/os/Handler;
.source "IccRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# static fields
.field protected static final DBG:Z = true

.field protected static final EVENT_SET_MSISDN_DONE:I = 0x1e

.field protected static final ICC_TYPE:Ljava/lang/String; = "ril.ICC_TYPE"

.field protected static final SPN_RULE_SHOW_PLMN:I = 0x2

.field protected static final SPN_RULE_SHOW_SPN:I = 0x1

.field protected static final UNINITIALIZED:I = -0x1

.field protected static final UNKNOWN:I


# instance fields
.field protected adnCache:Lcom/android/internal/telephony/AdnRecordCache;

.field protected countVoiceMessages:I

.field protected iccType:Ljava/lang/String;

.field public iccid:Ljava/lang/String;

.field protected isVoiceMailFixed:Z

.field protected mailboxIndex:I

.field protected mncLength:I

.field protected msisdn:Ljava/lang/String;

.field protected msisdnTag:Ljava/lang/String;

.field protected newVoiceMailNum:Ljava/lang/String;

.field protected newVoiceMailTag:Ljava/lang/String;

.field protected phone:Lcom/android/internal/telephony/PhoneBase;

.field protected recordsLoadedRegistrants:Landroid/os/RegistrantList;

.field protected recordsRequested:Z

.field protected recordsToLoad:I

.field protected spn:Ljava/lang/String;

.field protected spnDisplayCondition:I

.field protected voiceMailNum:Ljava/lang/String;

.field protected voiceMailTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 3
    .parameter "p"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 37
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    .line 45
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    .line 48
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->iccType:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailNum:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailTag:Ljava/lang/String;

    .line 55
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccRecords;->isVoiceMailFixed:Z

    .line 56
    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 59
    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    .line 83
    iput-object p1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 84
    return-void
.end method


# virtual methods
.method public getAdnCache()Lcom/android/internal/telephony/AdnRecordCache;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    return-object v0
.end method

.method protected abstract getDisplayRule(Ljava/lang/String;)I
.end method

.method public getMsisdnAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdnNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordsLoaded()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 219
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 222
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMessageCount()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    return v0
.end method

.method public getVoiceMessageWaiting()Z
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract handleMessage(Landroid/os/Message;)V
.end method

.method protected abstract log(Ljava/lang/String;)V
.end method

.method protected abstract onAllRecordsLoaded()V
.end method

.method protected abstract onRadioOffOrNotAvailable()V
.end method

.method protected abstract onRecordLoaded()V
.end method

.method public abstract onRefresh(Z[I)V
.end method

.method public registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    const/4 v3, 0x0

    .line 94
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 95
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 97
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 98
    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 100
    :cond_0
    return-void
.end method

.method public setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"

    .prologue
    .line 128
    iput-object p2, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    .line 129
    iput-object p1, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set MSISDN: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccRecords;->log(Ljava/lang/String;)V

    .line 134
    new-instance v1, Lcom/android/internal/telephony/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .local v1, adn:Lcom/android/internal/telephony/AdnRecord;
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v2, 0x6f40

    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->iccType:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->iccType:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x6f4a

    :goto_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x1e

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/IccRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    .line 138
    return-void

    .line 136
    :cond_0
    const/16 v3, 0x6f4e

    goto :goto_0
.end method

.method public abstract setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setVoiceMessageWaiting(II)V
.end method

.method public unregisterForRecordsLoaded(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 104
    return-void
.end method
