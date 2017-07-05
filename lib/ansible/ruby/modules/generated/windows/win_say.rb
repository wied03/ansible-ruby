# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Uses .NET libraries to convert text to speech and optionally play .wav sounds.  Audio Service needs to be running and some kind of speakers or headphones need to be attached to the windows target(s) for the speech to be audible.
      class Win_say < Base
        # @return [String, nil] The text to be spoken.  Use either msg or msg_file.  Optional so that you can use this module just to play sounds.
        attribute :msg
        validates :msg, type: String

        # @return [String, nil] Full path to a windows format text file containing the text to be spokend.  Use either msg or msg_file.  Optional so that you can use this module just to play sounds.
        attribute :msg_file
        validates :msg_file, type: String

        # @return [String, nil] Which voice to use. See notes for how to discover installed voices.  If the requested voice is not available the default voice will be used. Example voice names from Windows 10 are 'Microsoft Zira Desktop' and 'Microsoft Hazel Desktop'.
        attribute :voice
        validates :voice, type: String

        # @return [Integer, nil] How fast or slow to speak the text.  Must be an integer value in the range -10 to 10.  -10 is slowest, 10 is fastest.
        attribute :speech_speed
        validates :speech_speed, type: Integer

        # @return [String, nil] Full path to a C(.wav) file containing a sound to play before the text is spoken.  Useful on conference calls to alert other speakers that ansible has something to say.
        attribute :start_sound_path
        validates :start_sound_path, type: String

        # @return [String, nil] Full path to a C(.wav) file containing a sound to play after the text has been spoken.  Useful on conference calls to alert other speakers that ansible has finished speaking.
        attribute :end_sound_path
        validates :end_sound_path, type: String
      end
    end
  end
end
