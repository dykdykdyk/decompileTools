.class final Lcom/bingerz/android/countrycodepicker/b;
.super Ljava/lang/Object;
.source "CountryCodeActivity.java"

# interfaces
.implements Lcom/bingerz/android/countrycodepicker/h;


# instance fields
.field final synthetic a:Lcom/bingerz/android/countrycodepicker/CountryCodeActivity;


# direct methods
.method constructor <init>(Lcom/bingerz/android/countrycodepicker/CountryCodeActivity;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/bingerz/android/countrycodepicker/b;->a:Lcom/bingerz/android/countrycodepicker/CountryCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bingerz/android/countrycodepicker/b;->a:Lcom/bingerz/android/countrycodepicker/CountryCodeActivity;

    iget-object v0, v0, Lcom/bingerz/android/countrycodepicker/CountryCodeActivity;->a:Lcom/bingerz/android/countrycodepicker/e;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bingerz/android/countrycodepicker/e;->getPositionForSection(I)I

    move-result v0

    .line 44
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/bingerz/android/countrycodepicker/b;->a:Lcom/bingerz/android/countrycodepicker/CountryCodeActivity;

    invoke-static {v1}, Lcom/bingerz/android/countrycodepicker/CountryCodeActivity;->a(Lcom/bingerz/android/countrycodepicker/CountryCodeActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 47
    :cond_0
    return-void
.end method
