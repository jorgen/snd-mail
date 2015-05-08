module SendMail.SendMail where

import qualified SendMail.Types as MailTypes
import Data.ByteString
import SendMail.Internal.SendMailInternal
import Network.HTTP.Client.Conduit

getEmailSenderFromFile :: Show env => env -> Manager -> FilePath -> IO (Maybe MailTypes.EmailSender)
getEmailSenderFromFile = privateImplGetBackend

getEmailSenderFromContent :: Show env => env -> Manager -> ByteString -> IO (Maybe MailTypes.EmailSender)
getEmailSenderFromContent = privateImplGetBackendFromContent

