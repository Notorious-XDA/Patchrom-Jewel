.class final Landroid/widget/Editor$TextModifyOperation$1;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor$TextModifyOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator",
        "<",
        "Landroid/widget/Editor$TextModifyOperation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/widget/Editor$TextModifyOperation;
    .locals 2
    .parameter "in"

    .prologue
    new-instance v0, Landroid/widget/Editor$TextModifyOperation;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/widget/Editor$TextModifyOperation;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/widget/Editor$TextModifyOperation;
    .locals 1
    .parameter "in"
    .parameter "loader"

    .prologue
    new-instance v0, Landroid/widget/Editor$TextModifyOperation;

    invoke-direct {v0, p1, p2}, Landroid/widget/Editor$TextModifyOperation;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Landroid/widget/Editor$TextModifyOperation$1;->createFromParcel(Landroid/os/Parcel;)Landroid/widget/Editor$TextModifyOperation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/widget/Editor$TextModifyOperation$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/widget/Editor$TextModifyOperation;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/widget/Editor$TextModifyOperation;
    .locals 1
    .parameter "size"

    .prologue
    new-array v0, p1, [Landroid/widget/Editor$TextModifyOperation;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Landroid/widget/Editor$TextModifyOperation$1;->newArray(I)[Landroid/widget/Editor$TextModifyOperation;

    move-result-object v0

    return-object v0
.end method
