.class public Lmiui/provider/MusicSearchProvider$MusicMeta;
.super Ljava/lang/Object;
.source "MusicSearchProvider.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/MusicSearchProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MusicMeta"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/MusicSearchProvider$MusicMeta$Builder;,
        Lmiui/provider/MusicSearchProvider$MusicMeta$Flag;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmiui/provider/MusicSearchProvider$MusicMeta;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mAlbumName:Ljava/lang/String;

.field public final mArtistName:Ljava/lang/String;

.field public final mData:Ljava/lang/String;

.field public final mDuartion:J

.field public final mFlag:I

.field public final mLocalId:J

.field public final mOnlineId:Ljava/lang/String;

.field public final mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lmiui/provider/MusicSearchProvider$MusicMeta$1;

    invoke-direct {v0}, Lmiui/provider/MusicSearchProvider$MusicMeta$1;-><init>()V

    sput-object v0, Lmiui/provider/MusicSearchProvider$MusicMeta;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 0
    .parameter "localId"
    .parameter "onlineId"
    .parameter "title"
    .parameter "data"
    .parameter "artistName"
    .parameter "albumName"
    .parameter "duration"
    .parameter "flag"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lmiui/provider/MusicSearchProvider$MusicMeta;->mLocalId:J

    iput-object p3, p0, Lmiui/provider/MusicSearchProvider$MusicMeta;->mOnlineId:Ljava/lang/String;

    iput-object p4, p0, Lmiui/provider/MusicSearchProvider$MusicMeta;->mTitle:Ljava/lang/String;

    iput-object p5, p0, Lmiui/provider/MusicSearchProvider$MusicMeta;->mData:Ljava/lang/String;

    iput-object p6, p0, Lmiui/provider/MusicSearchProvider$MusicMeta;->mArtistName:Ljava/lang/String;

    iput-object p7, p0, Lmiui/provider/MusicSearchProvider$MusicMeta;->mAlbumName:Ljava/lang/String;

    iput-wide p8, p0, Lmiui/provider/MusicSearchProvider$MusicMeta;->mDuartion:J

    iput p10, p0, Lmiui/provider/MusicSearchProvider$MusicMeta;->mFlag:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/provider/MusicSearchProvider$MusicMeta;->mLocalId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/provider/MusicSearchProvider$MusicMeta;->mOnlineId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/provider/MusicSearchProvider$MusicMeta;->mTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/provider/MusicSearchProvider$MusicMeta;->mData:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/provider/MusicSearchProvider$MusicMeta;->mArtistName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/provider/MusicSearchProvider$MusicMeta;->mAlbumName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/provider/MusicSearchProvider$MusicMeta;->mDuartion:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/provider/MusicSearchProvider$MusicMeta;->mFlag:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Lmiui/provider/MusicSearchProvider$MusicMeta;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Lmiui/provider/MusicSearchProvider$MusicMeta;

    .local v0, other:Lmiui/provider/MusicSearchProvider$MusicMeta;
    iget-wide v3, p0, Lmiui/provider/MusicSearchProvider$MusicMeta;->mLocalId:J

    iget-wide v5, v0, Lmiui/provider/MusicSearchProvider$MusicMeta;->mLocalId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Lmiui/provider/MusicSearchProvider$MusicMeta;->mDuartion:J

    iget-wide v5, v0, Lmiui/provider/MusicSearchProvider$MusicMeta;->mDuartion:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget v3, p0, Lmiui/provider/MusicSearchProvider$MusicMeta;->mFlag:I

    iget v4, v0, Lmiui/provider/MusicSearchProvider$MusicMeta;->mFlag:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lmiui/provider/MusicSearchProvider$MusicMeta;->mOnlineId:Ljava/lang/String;

    iget-object v4, v0, Lmiui/provider/MusicSearchProvider$MusicMeta;->mOnlineId:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lmiui/provider/MusicSearchProvider$MusicMeta;->mTitle:Ljava/lang/String;

    iget-object v4, v0, Lmiui/provider/MusicSearchProvider$MusicMeta;->mTitle:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lmiui/provider/MusicSearchProvider$MusicMeta;->mData:Ljava/lang/String;

    iget-object v4, v0, Lmiui/provider/MusicSearchProvider$MusicMeta;->mData:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lmiui/provider/MusicSearchProvider$MusicMeta;->mArtistName:Ljava/lang/String;

    iget-object v4, v0, Lmiui/provider/MusicSearchProvider$MusicMeta;->mArtistName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lmiui/provider/MusicSearchProvider$MusicMeta;->mAlbumName:Ljava/lang/String;

    iget-object v4, v0, Lmiui/provider/MusicSearchProvider$MusicMeta;->mAlbumName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    iget-wide v0, p0, Lmiui/provider/MusicSearchProvider$MusicMeta;->mLocalId:J

    long-to-int v1, v0

    iget-object v0, p0, Lmiui/provider/MusicSearchProvider$MusicMeta;->mOnlineId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/provider/MusicSearchProvider$MusicMeta;->mOnlineId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOnline()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/provider/MusicSearchProvider$MusicMeta;->mOnlineId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    iget-wide v0, p0, Lmiui/provider/MusicSearchProvider$MusicMeta;->mLocalId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lmiui/provider/MusicSearchProvider$MusicMeta;->mOnlineId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/provider/MusicSearchProvider$MusicMeta;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/provider/MusicSearchProvider$MusicMeta;->mData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/provider/MusicSearchProvider$MusicMeta;->mArtistName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/provider/MusicSearchProvider$MusicMeta;->mAlbumName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lmiui/provider/MusicSearchProvider$MusicMeta;->mDuartion:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lmiui/provider/MusicSearchProvider$MusicMeta;->mFlag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
