.class public final Lcom/android/internal/telephony/cat/CatEventMessage;
.super Ljava/lang/Object;
.source "CatEventMessage.java"


# static fields
.field private static final DEFAULT_DEST_ID:I = 0x81

.field private static final DEFAULT_SOURCE_ID:I = 0x82


# instance fields
.field private mAdditionalInfo:[B

.field private final mDestId:I

.field private final mEvent:I

.field private final mOneShot:Z

.field private final mSourceId:I


# direct methods
.method public constructor <init>(III[BZ)V
    .locals 3
    .parameter "event"
    .parameter "sourceId"
    .parameter "destId"
    .parameter "additionalInfo"
    .parameter "oneShot"

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatEventMessage;->mAdditionalInfo:[B

    iput p1, p0, Lcom/android/internal/telephony/cat/CatEventMessage;->mEvent:I

    iput p2, p0, Lcom/android/internal/telephony/cat/CatEventMessage;->mSourceId:I

    iput p3, p0, Lcom/android/internal/telephony/cat/CatEventMessage;->mDestId:I

    if-eqz p4, :cond_0

    array-length v0, p4

    if-lez v0, :cond_0

    array-length v0, p4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatEventMessage;->mAdditionalInfo:[B

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatEventMessage;->mAdditionalInfo:[B

    array-length v1, p4

    invoke-static {p4, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iput-boolean p5, p0, Lcom/android/internal/telephony/cat/CatEventMessage;->mOneShot:Z

    return-void
.end method

.method public constructor <init>(I[BZ)V
    .locals 6
    .parameter "event"
    .parameter "additionalInfo"
    .parameter "oneShot"

    .prologue
    const/16 v2, 0x82

    const/16 v3, 0x81

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatEventMessage;-><init>(III[BZ)V

    return-void
.end method


# virtual methods
.method public getAdditionalInfo()[B
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatEventMessage;->mAdditionalInfo:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatEventMessage;->mAdditionalInfo:[B

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatEventMessage;->mAdditionalInfo:[B

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatEventMessage;->mAdditionalInfo:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDestId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/cat/CatEventMessage;->mDestId:I

    return v0
.end method

.method public getEvent()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/cat/CatEventMessage;->mEvent:I

    return v0
.end method

.method public getSourceId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/cat/CatEventMessage;->mSourceId:I

    return v0
.end method

.method public isOneShot()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/CatEventMessage;->mOneShot:Z

    return v0
.end method
