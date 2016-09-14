.class public final Lcom/nut/blehunter/ui/b/a/v;
.super Lcom/nut/blehunter/ui/b/a/a;
.source "NumberPickerDialogFragment.java"


# static fields
.field private static final g:[Ljava/lang/String;


# instance fields
.field public f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "10"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "15"

    aput-object v2, v0, v1

    sput-object v0, Lcom/nut/blehunter/ui/b/a/v;->g:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b/a/a;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;Lcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/v;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 23
    new-instance v0, Lcom/nut/blehunter/ui/b/a/v;

    invoke-direct {v0}, Lcom/nut/blehunter/ui/b/a/v;-><init>()V

    .line 25
    new-instance v1, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nut/blehunter/ui/b/a/b;->a(Z)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nut/blehunter/ui/b/a/b;->b(Z)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/nut/blehunter/ui/b/a/b;->a(I)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v2

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030066

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nut/blehunter/ui/b/a/b;->a(Landroid/view/View;)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v2

    const v3, 0x7f060085

    invoke-virtual {v2, v3, p3}, Lcom/nut/blehunter/ui/b/a/b;->a(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v2

    const v3, 0x7f060083

    invoke-virtual {v2, v3, v5}, Lcom/nut/blehunter/ui/b/a/b;->b(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 35
    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/a/v;->a(Lcom/nut/blehunter/ui/b/a/b;)V

    .line 37
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 38
    const-string v2, "number"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/a/v;->setArguments(Landroid/os/Bundle;)V

    .line 41
    return-object v0
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/b/a/v;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 12
    iput-object p1, p0, Lcom/nut/blehunter/ui/b/a/v;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/nut/blehunter/ui/b/a/v;->g:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/v;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/a/v;->f:Ljava/lang/String;

    .line 48
    const v0, 0x7f0d0190

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    .line 49
    sget-object v1, Lcom/nut/blehunter/ui/b/a/v;->g:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 50
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 51
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 52
    iget-object v2, p0, Lcom/nut/blehunter/ui/b/a/v;->f:Ljava/lang/String;

    .line 1065
    const/4 v1, 0x0

    :goto_0
    sget-object v3, Lcom/nut/blehunter/ui/b/a/v;->g:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 1066
    sget-object v3, Lcom/nut/blehunter/ui/b/a/v;->g:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1067
    add-int/lit8 v1, v1, 0x1

    .line 52
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 53
    new-instance v1, Lcom/nut/blehunter/ui/b/a/w;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/b/a/w;-><init>(Lcom/nut/blehunter/ui/b/a/v;)V

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 61
    return-void

    .line 1065
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1070
    :cond_1
    const/4 v1, 0x2

    goto :goto_1
.end method
