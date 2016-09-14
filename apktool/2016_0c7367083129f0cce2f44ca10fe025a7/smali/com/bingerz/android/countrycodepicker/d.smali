.class final Lcom/bingerz/android/countrycodepicker/d;
.super Ljava/lang/Object;
.source "CountryCodeActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/bingerz/android/countrycodepicker/CountryCode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bingerz/android/countrycodepicker/CountryCodeActivity;


# direct methods
.method constructor <init>(Lcom/bingerz/android/countrycodepicker/CountryCodeActivity;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/bingerz/android/countrycodepicker/d;->a:Lcom/bingerz/android/countrycodepicker/CountryCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 99
    check-cast p1, Lcom/bingerz/android/countrycodepicker/CountryCode;

    check-cast p2, Lcom/bingerz/android/countrycodepicker/CountryCode;

    .line 1102
    iget-object v0, p1, Lcom/bingerz/android/countrycodepicker/CountryCode;->g:Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/bingerz/android/countrycodepicker/CountryCode;->g:Ljava/lang/String;

    const-string v1, "#"

    .line 1103
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1104
    :cond_0
    const/4 v0, -0x1

    .line 1107
    :goto_0
    return v0

    .line 1105
    :cond_1
    iget-object v0, p1, Lcom/bingerz/android/countrycodepicker/CountryCode;->g:Ljava/lang/String;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p2, Lcom/bingerz/android/countrycodepicker/CountryCode;->g:Ljava/lang/String;

    const-string v1, "@"

    .line 1106
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1107
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1109
    :cond_3
    iget-object v0, p1, Lcom/bingerz/android/countrycodepicker/CountryCode;->g:Ljava/lang/String;

    iget-object v1, p2, Lcom/bingerz/android/countrycodepicker/CountryCode;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
