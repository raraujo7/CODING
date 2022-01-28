LOCALES = {
  en: {
    subject: "Our website is online",
    body: "Come and visit us!",
    closing: "See you soon",
    signature: "The Team"
  },
  fr: {
    subject: "Notre site est en ligne",
    body: "Venez nous rendre visite !",
    closing: "A bientot",
    signature: "L'équipe"
  },
  de: {
    subject: "Unsere Website ist jetzt online",
    body: "Komm und besuche uns!",
    closing: "Bis bald",
    signature: "Das Team"
  }
}

def valid?(email)
  # TODO: return true if the email is valid, false otherwise
  email.match?(/^(\w+)@(\w+)\.(\w+)$/)
end

def clean_database(emails)
  # TODO: return an array with the valid emails only
  emails.select { |email| valid?(email) }
end

def group_by_tld(emails)
  # TODO: return a Hash with emails grouped by TL
  # p emails
  # p emails[1].match(/.(\w+)$/)
  return emails.group_by { |email| email.match(/.(\w+)$/)[1] }
end

def compose_mail(email)
  # TODO: return a Hash with username, domain and tld extracted from email
  data = email.match(/^(?<username>\w+)@(?<domain>\w+)\.(?<tld>\w+)$/)
  return {
    username: data[:username],
    domain: data[:domain],
    tld: data[:tld]
  }
end

def compose_translated_email(email)
  # TODO: return a Hash with username, domain and tld extracted from email
  # TODO: translate subject, body, closing and signature, according to TLD
  data = email.match(/^(?<username>\w+)@(?<domain>\w+)\.(?<tld>\w+)$/)
  # transl(data[:tld],"subject")
  return {
    username: data[:username],
    domain: data[:domain],
    tld: data[:tld],
    subject: transl(data[:tld], :subject),
    body: transl(data[:tld], :body),
    closing: transl(data[:tld], :closing),
    signature: transl(data[:tld], :signature)
  }
end

def transl(lang, key)
  # puts lang.class
  # puts key.class
  # puts lang
  # puts key
  # puts LOCALES[lang.to_sym][key.to_sym]
  return LOCALES[lang.to_sym].nil? ? LOCALES[:en][key] : LOCALES[lang.to_sym][key]
end
