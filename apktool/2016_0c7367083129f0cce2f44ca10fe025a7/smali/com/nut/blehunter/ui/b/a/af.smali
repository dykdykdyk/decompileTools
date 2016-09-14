.class final Lcom/nut/blehunter/ui/b/a/af;
.super Ljava/lang/Object;
.source "TimePickerDialogFragment.java"

# interfaces
.implements Landroid/widget/NumberPicker$Formatter;


# instance fields
.field final a:Ljava/lang/StringBuilder;

.field final b:[Ljava/lang/Object;

.field c:C

.field d:Ljava/util/Formatter;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/a/af;->a:Ljava/lang/StringBuilder;

    .line 186
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/a/af;->b:[Ljava/lang/Object;

    .line 193
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 194
    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/b/a/af;->b(Ljava/util/Locale;)V

    .line 195
    return-void
.end method

.method private static a(Ljava/util/Locale;)C
    .locals 1

    .prologue
    .line 199
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v0, p0}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v0

    return v0
.end method

.method private b(Ljava/util/Locale;)V
    .locals 2

    .prologue
    .line 203
    .line 1219
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/nut/blehunter/ui/b/a/af;->a:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 203
    iput-object v0, p0, Lcom/nut/blehunter/ui/b/a/af;->d:Ljava/util/Formatter;

    .line 204
    invoke-static {p1}, Lcom/nut/blehunter/ui/b/a/af;->a(Ljava/util/Locale;)C

    move-result v0

    iput-char v0, p0, Lcom/nut/blehunter/ui/b/a/af;->c:C

    .line 205
    return-void
.end method


# virtual methods
.method public final format(I)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 208
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 209
    iget-char v1, p0, Lcom/nut/blehunter/ui/b/a/af;->c:C

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/af;->a(Ljava/util/Locale;)C

    move-result v2

    if-eq v1, v2, :cond_0

    .line 210
    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/b/a/af;->b(Ljava/util/Locale;)V

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/af;->b:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 213
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/af;->a:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nut/blehunter/ui/b/a/af;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 214
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/af;->d:Ljava/util/Formatter;

    const-string v1, "%02d"

    iget-object v2, p0, Lcom/nut/blehunter/ui/b/a/af;->b:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 215
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/af;->d:Ljava/util/Formatter;

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
