.class public Lcom/nut/blehunter/ui/widget/WeekDatePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "WeekDatePicker.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/nut/blehunter/ui/widget/WeekDatePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1163
    new-instance v0, Lcom/nut/blehunter/ui/widget/ab;

    invoke-direct {v0}, Lcom/nut/blehunter/ui/widget/ab;-><init>()V

    sput-object v0, Lcom/nut/blehunter/ui/widget/WeekDatePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 1143
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker$SavedState;->a:I

    .line 1145
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 1134
    invoke-direct {p0, p1}, Lcom/nut/blehunter/ui/widget/WeekDatePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 1139
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1140
    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/widget/WeekDatePicker$SavedState;)I
    .locals 1

    .prologue
    .line 1134
    iget v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker$SavedState;->a:I

    return v0
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/widget/WeekDatePicker$SavedState;I)I
    .locals 0

    .prologue
    .line 1134
    iput p1, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker$SavedState;->a:I

    return p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1156
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HorizontalPicker.SavedState{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " selItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker$SavedState;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1149
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1151
    iget v0, p0, Lcom/nut/blehunter/ui/widget/WeekDatePicker$SavedState;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1152
    return-void
.end method
